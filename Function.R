Colors_Mycotype <- c("#E69F00", # orange
                     "#56B4E9", # lightblue
                     "#009E73", # green
                     "#F0E442", # yellow
                     "#0072B2", # blue
                     "#D55E00", # red
                     "#CC79A7") # pink


# c2r #####
# column to rownames quickly
c2r <- function(data, x){as.data.frame(data) %>% 
    tibble::column_to_rownames(., x)}

# r2c #####
# rownames to column quickly
r2c <- function(data, x){as.data.frame(data) %>% 
    tibble::rownames_to_column(., x) }

# c2f #####
# change character column to factor column
c2f <- function(data){data %>% 
    mutate_if(is.character, funs(as.factor(.)))}

# q.value
qvalue_r <- function(x){
  qvalue::qvalue(x,
                 lambd = seq(0, 0.95, 0.05),
                 pi0 = 1,
                 pi0.method = "bootstrap")$qvalue}


format_pvalue_lancet <- function(Value){
  if_else(Value < 0.0001, paste("<0.0001"),
          if_else(Value < 0.1, sprintf(Value, fmt = "%.5f"),
                  sprintf(Value, fmt = "%.5f")))}


# Function #####
add_sd <-
  function(Value){
    ifelse(Value < 0.001, paste("***"),
           ifelse(Value < 0.01,paste("**"),
                  ifelse(Value < 0.05,paste("*"),
                         paste(""))))}