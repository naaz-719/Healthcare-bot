<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEALTHCARE CHATBOT</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="container">
        <div id="screen">
            <div id="header">HEALTHCARE CHATBOT</div>
            <div id="messageDisplaySection">
            </div>
            <!-- messages input field -->
            <div id="userInput">
                <input type="text" name="messages" id="messages" autocomplete="OFF" placeholder="Type a Message / Questions" required>
                <input type="submit" value=">>>" id="send" name="send" style="display: block;">
            </div>
        </div>
    </div>

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    
    <!-- Jquery Start -->
    <script>
        $(document).ready(function(){
            // send button click
            $("#send").on("click",function(e){
                const userMessage = $("#messages").val();
                if (userMessage.trim() === "") {
                    const appendBotResponse = '<div id="messagesContainer"><div class="chat botMessages">Sorry can\'t process empty inputs! Try again!</div></div>';
                    $("#messageDisplaySection").append(appendBotResponse);
                } else {
                    const appendUserMessage = '<div class="chat usersMessages">'+ userMessage +'</div>';
                    $("#messageDisplaySection").append(appendUserMessage);

                    // ajax
                    $.ajax({
                        url: "chatdata.php",
                        type: "POST",
                        data: {messageValue: userMessage},
                        success: function(data){
                            const appendBotResponse = '<div id="messagesContainer"><div class="chat botMessages">'+data+'</div></div>';
                            $("#messageDisplaySection").append(appendBotResponse);
                        }
                    });
                }
                $("#messages").val("");
            });
        });
    </script>
</body>
</html>
