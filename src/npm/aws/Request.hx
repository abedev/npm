package npm.aws;

import npm.common.Callback;

/*
Request Building Events:
  * 'validate' function (request)
    Triggered when a request is being validated.
  * 'build' function (request)
    Triggered when the request payload is being built.
  * 'sign' function (request)
    Triggered when the request is being signed.

Request Sending Events:
  * 'send' function (response)
    Triggered when the request is ready to be sent.
  * 'retry' function (response)
    Triggered when a request failed and might need to be retried or redirected.

Data Parsing Events:
  * 'extractError' function (response)
    Triggered on all non-2xx requests so that listeners can extract error
    details from the response body.
  * 'extractData' function (response)
    Triggered in successful requests to allow listeners to de-serialize the
    response body into response.data.

Completion Events:
  * 'success' function (response)
    Triggered when the request completed successfully.
  * 'error' function (error, response)
    Triggered when an error occurs at any point during the request.
  * 'complete' function (response)
    Triggered whenever a request cycle completes.

HTTP Events
  * 'httpHeaders' function (statusCode, headers, response)
    Triggered when headers are sent by the remote server.
  * 'httpData' function (chunk, response)
    Triggered when data is sent by the remote server.
  * 'httpUploadProgress' function (progress, response)
    Triggered when the HTTP request has uploaded more data.
  * 'httpDownloadProgress' function (progress, response)
    Triggered when the HTTP request has downloaded more data.
  * 'httpError' function (error, response)
    Triggered when the HTTP request failed.
  * 'httpDone' function (response)
    Triggered when the server is finished sending data.

 */
extern class Request extends js.node.events.EventEmitter<Request> {
  /*
  The raw HTTP request object containing request headers and body information sent by the service.
   */
  //var httpRequest : AWS.HttpRequest;
  /*
  The time that the request started.
   */
  var startTime : Date;
  /*
  Aborts a request, emitting the error and complete events.
   */
  function abort() : Request;
  /*
  Converts the request object into a readable stream that can be read from or piped into a writable stream.
  */
  function createReadStream() : js.node.Stream<Dynamic>;
  /*
  Enumerates over individual items of a request, paging the responses if necessary.
  */
  function eachItem(callback : Callback<Dynamic>) : Void;
  /*
  Iterates over each page of results given a pageable request, calling the provided callback with each page of data.
  */
  function eachPage(callback : Callback<Dynamic>) : Void;
  /*
  Whether the operation can return multiple pages of response data.
  */
  function isPageable() : Bool;
  /*
  Sends the request object.
  */
  @:overload(function(callback : Callback<Dynamic>) : Void {})
  function send() : Void;
}
