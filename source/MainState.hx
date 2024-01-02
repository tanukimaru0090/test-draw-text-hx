
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxTimer;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxState;

class MainState extends FlxState{
	private var timer:FlxTimer; // タイマーをメンバ変数として宣言
	public function drawTextNovelStyle(text:String,x:Float,y:Float,size:Int,color:FlxColor,width:Int,delay:Float,fontPath:String){
			var flxText = new FlxText(x,y,width,""); // 幅を100に変更
		flxText.setFormat(fontPath);
		flxText.size = size;
		flxText.color = color;
		add(flxText);
		var chars = text.split(""); // 文字列を配列に分割
		var index = 0;
		timer = new FlxTimer(); // メンバ変数に代入
		timer.start(delay,function(t:FlxTimer){
			if(index<chars.length){
				flxText.text = chars.slice(0,index+1).join(""); // 配列を部分的に結合して代入
				index++;
			}else{
				timer.cancel();
			}
		},chars.length+1);
	}

	public function new(){
		super();
	}
	override public function create(){
		super.create();
		drawTextNovelStyle("全然作業が進まない。。。どうしよ",0,350,30,FlxColor.WHITE,1280,0.09,"/Users/daruma/Downloads/misaki_ttf_2021-05-05/misaki_gothic_2nd.ttf");
	}

	override public function update(elapsed:Float){
		super.update(elapsed);
	}

}
