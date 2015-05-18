c3w2q1 <- function()
{
    myapp <- oauth_app("github",
                       key = "bc86087f6d7de85b29e4", 
                       secret="8e531c99f8517d12c3f6d591e535fa95782af0d4")
    github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
    gtoken <- config(token = github_token)
    req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
    r <- content(req)
##    for(i in 1:21)
##    {
##        a <- c(a, r[[i]]$name)
##        b <- c(b, r[[i]]$crea)
##    }
##    list(a,b)
}