script <ncurses>;

boolean notavailable (item checkedItem){
    if (available_amount(checkedItem) < 1){
        print('Uh oh, you dont any '+checkedItem+'! Skipping','red');
        return true;
    }
    return false;
}

boolean sendHeart(string heartColor, string player, string message1, string message2) {
    if ( (heartColor == '') || (player == '') ) {
        print('Oh no, I need to know what color heart and who you want to send these to!','red');
        return false;
    }
    if (length(message1) > 5 || length(message2) > 5){
        print('Your message is too long, I can not fit it in this tiny little heart','red');
        return false;
    }
    string urlstring = 'curse.php?action=use&';
    int heartNum;
    switch ( heartColor )
    {
        case 'white':
            heartNum = 2304;
            break;
        case 'pink':
            heartNum = 2305;
            break;
        case 'orange' :
            heartNum = 2306;
            break;
        case 'lavender' :
            heartNum = 2307;
            break;
        case 'yellow' :
            heartNum = 2308;
            break;
        case 'green' :
            heartNum = 2309;
            break;
        case 'black' :
            heartNum = 3504;
            print('Just so you know, this will always send Damn Gina as the message','yellow');
            break;
        default:
            print('Oh no, you dont know your colors! I need a valid color of heart, try white|pink|orange|lavender|yellow|green|black');
            return false;
    }
    if (notavailable(to_item(heartNum))){
        return false;
    }
    #probably need to handle blank messages at some point?
    urlstring = (urlstring+'whichitem='+heartNum+'&targetplayer='+player+'&texta='+message1+'&textb='+message1);
    visit_url(urlstring);
    return true;
//    visit_url('curse.php?action=use&whichitem=9738&targetplayer=2393910');
}

boolean tagPlayer(item curseItem, string player){
    if (notavailable(curseItem)){
        return false;
    }
    int itemID = to_int(curseItem);
    string urlstring = ('curse.php?action=use&whichitem='+to_string(itemID)+'&targetplayer='+player );
    visit_url(urlstring);
    return true;
}

boolean sendArrowgram(string player, string message){
    if (notavailable($item[arrowgram])){
        return false;
    }
    if (length(message) > 20 ){
        print('Your message is too long, It doesnt fit on the Arrow','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=4940&targetplayer='+player+'&arrowtext='+message );
    visit_url(urlstring);
    return true;

}

boolean throwBrick(string player, string message){
    if (notavailable($item[brick])){
        return false;
    }
    if (length(message) > 500 ){
        print('Your message is too long, consider writing a novel','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=1649&targetplayer='+player+'&message='+message );
    visit_url(urlstring);
    return true;
}

boolean sendPeppermintgram(string player, string text0, string text1, string text2, string text3, string text4){
    if (length(text0) > 5 || length(text1) > 5 || length(text2) > 5 || length(text3) > 4 || length(text4) > 4 ){
        print('Your message is too long, I can not fit it in this candygram','red');
        print('Lines 1-3 are 5 characters each, and lines 4-5 are 4 characters each','red');
        return false;
    }
    if (notavailable($item[Candy cane candygram])){
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=5400&targetplayer='+player+'&text0='+text0+'&text1='+text1+'&text2='+text2+'&text3='+text3+'&text4='+text4 );
    visit_url(urlstring);
    return true;
}

boolean sendCheerOGram(string player, string message){
    if (notavailable($item[cheer-o-gram])){
        return false;
    }
    if (length(message) > 40 ){
        print('Your message is too long, consider writing a novel','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=9631&targetplayer='+player+'&message='+message );
    visit_url(urlstring);
    return true;
}

boolean spitball(string player, string message){
    //add linebreak handline maybe?
    if (notavailable($item[chewable paper])){
        return false;
    }
    if (length(message) > 56 ){
        print('Your message is too long, consider writing a novel','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=7697&targetplayer='+player+'&message='+message );
    visit_url(urlstring);
    return true;
}
boolean sendFancyCalligraphy(string player, string message){
    //add linebreak handline maybe?
    if (notavailable($item[fancy calligraphy pen])){
        return false;
    }
    if (length(message) > 400 ){
        print('Your message is too long, consider writing a novel','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=8032&targetplayer='+player+'&message='+message );
    visit_url(urlstring);
    return true;
}

boolean sendGingerCookie(string player, string text0, string text1, string text2){
    if (length(text0) > 5 || length(text1) > 6 || length(text2) > 5 ){
        print('Your message is too long, I can not fit it in this cookiegram','red');
        print('Lines 1&3 are 5 characters each, and line 2 is 6 character each','red');
        return false;
    }
    if (notavailable($item[personalizable gingerbread cookie])){
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=10395&targetplayer='+player+'&text0='+text0+'&text1='+text1+'&text2='+text2);
    visit_url(urlstring);
    return true;
}

boolean sendCoffeeMug(string player, string texta, string textb, string textc){
    if (length(texta) > 6 || length(textb) > 6 || length(textc) > 6 ){
        print('Your message is too long, I can not fit it in this Coffee Mug','red');
        print('All three lines hold up to 6 characters','red');
        return false;
    }
    if (notavailable($item[personalized coffee mug])){
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=3280&targetplayer='+player+'&texta='+texta+'&textb='+textb+'&textc='+textc);
    visit_url(urlstring);
    return true;
}

boolean sendSmokeSignal(string player, string message){
    if ( length(message) > available_amount($item[puff of smoke]) ){
        print('Your message is too long, you need to buy more smoke for that','red');
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=4530&targetplayer='+player+'&message='+message);
    visit_url(urlstring);
    return true;
}

boolean shootMarshmallow(string player){
    if ( available_amount($item[s'more gun]) > 1 && available_amount($item[marshmallow]) > 1 ){
        print('You are lacking either a smore gun or a marshmallow skipping for now','red');
        return false;
    }
    return tagPlayer($item[s'more gun], player);
}

boolean throwABone(string player, string message){
    if (length(message) > 10){
        print('Your message is too long, consider boning up on your counting and only send 10 characters?','red');
        return false;
    }
    if (notavailable($item[throwing bone])){
        return false;
    }
    string urlstring = ('curse.php?action=use&whichitem=5331&targetplayer='+player+'&bonetext='+message);
    visit_url(urlstring);
    return true;
}

boolean sendWarbearTelegram(string player, string message){
    #not sure what to do here
    return true;
}

boolean sendTentSmoke(string message){
    if (notavailable($item[campfire smoke])){
        return false;
    }
    #I dont think this is right but Ill check later
    string use_url = 'inv_use.php?whichitem=10313';
    string urlstring = ('choice.php?whichchoice=1394&option=1&message='+message);
    string result0 = visit_url(use_url);
    print(result0);
    string result = visit_url(urlstring);
    print(result);
    //visit_url(urlstring);
    return true;
}
