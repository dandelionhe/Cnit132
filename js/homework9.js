// General
$(document).ready(function(){
    $(document).tooltip();
    $("button").click(function(){
        $("#fadetext").fadeTo("slow",0.25);
  });
});

// 1.....
txtsize=0;
maxsize=32;
var timer;
function writeMsg()
{
if (txtsize<maxsize)
    {
    document.getElementById('msg').style.fontSize=txtsize+"px";
    txtsize++;
    timer=setTimeout("writeMsg()", 50);
    }
}

// Change Image
function switchImage(){
    document.getElementById('hero').src='../Images/after.gif';
}

function restoreImage(){
    document.getElementById('hero').src='../Images/before.gif';
}

// Responding
function checkanswer(answer){
    if(answer==='blood')
        alert("That's right!");
    else
        alert("Remember he had to bite his finger before he turn into titan?");
}
// goto
function goto(){
    var page=resources.reslist.options[resources.reslist.selectedIndex].value;
    location=page;
}
//newwindow
function newwindow(url){
    link = window.open(url,'_new', 'toolbar=0,menubar=0,scrollbars=0,status=0,resizable=1,top=500,left=710px,fullscreen=1,height=100px,width=100px', '');
}

