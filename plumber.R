library(plumber)

#* @apiTitle Simple API

#* Echo provided text
#* @param text The text to be echoed in the response
#* @get /echo
function(text = "") {
  list(
    message_echo = paste("The text is:", text)
  )
}

#* Echo provided text
#* @param text The text to be echoed in the response
#* @param number A number to be echoed in the response
#* @get /echo1
#* @post /echo1
function(req, text = "", number = 0) {
  list(
    message_echo1 = paste("The text is:", text),
    number_echo1 = paste("The number is:", number),
    raw_body = req$postBody
  )
}