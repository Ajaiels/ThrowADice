using Toybox.WatchUi as Ui;
using Toybox.System as Sys;
using Toybox.Graphics as Gfx;
using Toybox.Math as Math;

class TrowADiceWidgetView extends Ui.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        
        Sys.println("width= " + dc.getWidth() + " Height= " + dc.getHeight());
        var diceWidth = 100;
        var dotRadius = 8;
        //dc.setColor(Gfx.COLOR_BLACK);
        dc.setPenWidth(3);
        dc.drawRectangle(dc.getWidth()/2 - diceWidth/2, dc.getHeight()/2 - diceWidth/2, diceWidth, diceWidth);
        
        var value = Math.rand() % 5 + 1;
        
        Sys.println("Dice Value= " + value);
        
        if (value == 1)
        {
        	//Center dot
        	dc.fillCircle(dc.getWidth()/2, dc.getHeight()/2, dotRadius);
        }else if (value == 2)
        {
        	//Lower left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper right corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        }else if (value == 3)
        {
        	//Center dot
        	dc.fillCircle(dc.getWidth()/2, dc.getHeight()/2, dotRadius);
        	//Lower left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper right corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        }else if (value == 4)
        {
        	//Lower left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        	//Lower rigth corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper right corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        }else if (value == 5)
        {
        	//Center dot
        	dc.fillCircle(dc.getWidth()/2, dc.getHeight()/2, dotRadius);
        	//Lower left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        	//Lower rigth corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper right corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        }else if (value == 6)
        {
        	//Lower center dot
        	dc.fillCircle(dc.getWidth()/2, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper center dot
        	dc.fillCircle(dc.getWidth()/2, dc.getHeight()/2 - diceWidth/4, dotRadius);
        	//Lower left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper left corner dot
        	dc.fillCircle(dc.getWidth()/2 - diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        	//Lower rigth corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 + diceWidth/4, dotRadius);
        	//Upper right corner dot
        	dc.fillCircle(dc.getWidth()/2 + diceWidth/4, dc.getHeight()/2 - diceWidth/4, dotRadius);
        }
        
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
