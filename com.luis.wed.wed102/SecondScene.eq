
/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene: SEScene
{
	SESprite colormain;
	SESprite color1;
	SESprite color2;
	SESprite color3;
	SESprite color4;
	SESprite textmain;
	SESprite text1;
	SESprite text2;
	SESprite text3;
	SESprite text4;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("#0000FF"), get_scene_width(), get_scene_height()));
		
		color1 = add_sprite_for_color(Color.instance("#FF0000"), 0.25*get_scene_width(), 0.25*get_scene_height());
		color1.move(0.75*get_scene_width(), 0.6*get_scene_height());

		colormain = add_sprite_for_color(Color.instance("#000000"), 0.25*get_scene_width(), 0.25*get_scene_height());
		colormain.move(0.75*get_scene_width(), 0.7*get_scene_height());

		color3 = add_sprite_for_color(Color.instance("#339900"), 0.25*get_scene_width(), 0.25*get_scene_height());
		color3.move(0.75*get_scene_width(),0.80*get_scene_height());

		color4 = add_sprite_for_color(Color.instance("#FFCC33"), 0.25*get_scene_width(), 0.25*get_scene_height());
		color4.move(0.75*get_scene_width(),0.9*get_scene_height());

		rsc.prepare_font("myfont", "arial bold color=white", 40);
		textmain = add_sprite_for_text("main", "myfont");
		textmain.move(0.75*get_scene_width(), 0.7*get_scene_height());

		text1 = add_sprite_for_text("red", "myfont");
		text1.move(0.75*get_scene_width(), 0.6*get_scene_height());

		text3 = add_sprite_for_text("green", "myfont");
		text3.move(0.75*get_scene_width(), 0.8*get_scene_height());
		
		text4 = add_sprite_for_text("yellow", "myfont");
		text4.move(0.75*get_scene_width(), 0.9*get_scene_height());
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0.75*get_scene_width(), 0.6*get_scene_height(), get_scene_width(), 0.7*get_scene_height())) {
			switch_scene(new FirstScene());
		}
		if(pi.is_inside(0.75*get_scene_width(), 0.7*get_scene_height(), get_scene_width(), 0.8*get_scene_height())) {
			switch_scene(new MainScene());
		}
		if(pi.is_inside(0.75*get_scene_width(), 0.8*get_scene_height(), get_scene_width(), 0.9*get_scene_height())) {
			switch_scene(new ThirdScene());
		}
		if(pi.is_inside(0.75*get_scene_width(), 0.9*get_scene_height(), get_scene_width(), get_scene_height())) {
			switch_scene(new FourthScene());
		}

	}

	public void cleanup() {
		base.cleanup();
	}
}
