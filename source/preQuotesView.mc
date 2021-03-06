import Toybox.Graphics;
import Toybox.WatchUi;
using Toybox.System;
using Toybox.Math;
using Toybox.Time;

class preQuotesView extends WatchUi.View {

    // Global Variables
    // Create array of Pre Quotes
    var quotes = ["What I want\n is to be number\n one.",
     "What I like \nmost about the \ntrack is the \nfeeling I get \ninside after a good run.",
     "To give anything \nless than your \nbest is to \nsacrifice the gift.",
     "Somebody may beat \nme, but they are \ngoing to have \nto bleed to do it.", 
     "Its not whos \nthe best, its \nwho can take \nthe most pain.", 
     "Im going to \nwork so that its \na pure guts race \nat the end, \nand if it is, I am \nthe only one who \ncan win it.",
     "A race is a work \nof art that people can \nlook at and be affected \nin as many ways theyre capable \nof understanding.", 
     "If anybody wants \nto beat me, \nlet them run \na world record.", 
     "Success is not \nhow far youve got, \nbut the distance you \ntraveled from where \nyou started.", 
     "You said I \nwas weak. You \nsaid I couldnt \ndo it. \nThank you. \nYou gave me \neverything I needed \nto prove \nyou wrong.", 
     "Something inside of\n me just said \n'Hey, wait a minute, \nI want to beat him,' \nand I just took off.", 
     "There are big odds\n against me. Nobody under 25\n has ever won the\n Olympic five. But if\n everything goes right, \nwhoever wins will know\n he has been in one \nhelluva race.", 
     "I decided that if \nI was going to\n continue in track,\n that I didn't want\n to lose, that I\n wasnt going to lose.", 
     "I like to make \npeople stop and say,\n Ive never seen anyone\n run like that before.",
     "There is a breaking point\n in each race when\n you wonder if all the\n sacrifice is really \nworth it. You think \nwhy should I do\n this? I dont have\n to run this\n hard. But thats when\n I think about them.",
     ];
    
    // Create random number between 0 - 14
    var rand = Math.rand() % 15;

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);

        // Use Random Number to get Random Quote
        var newQuote = quotes[rand];

        // Set color and print quote
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_TRANSPARENT);
        dc.drawText(dc.getWidth() / 2, dc.getHeight() / 2, Graphics.FONT_SYSTEM_XTINY, newQuote, Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
