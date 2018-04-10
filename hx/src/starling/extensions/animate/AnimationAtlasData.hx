package starling.extensions.animate;

typedef AnimationAtlasData = 
{
	?ANIMATION:SymbolData,
	?SYMBOL_DICTIONARY:{
		Symbols:Array<SymbolData>
	},
	
	?metadata:{
		?framerate:Null<Int>
	},
	
	?ATLAS:{
		SPRITES: Array<SpriteData>
	},
	
	?meta:{
		app: String,
		version: String,
		image: String,
		format: String,
		size: { w:Int, h:Int },
		scale: String,
	}
}

typedef SpriteData =
{
	name: String,
	x:Int,
	y:Int,
	w:Int,
	h:Int,
	rotated:Bool
}

typedef SymbolData =
{
	?name: String,
	SYMBOL_name: String,
	?TIMELINE: SymbolTimelineData
}

typedef SymbolTimelineData =
{
	?sortedForRender:Bool,
	LAYERS: Array<LayerData>
}

typedef LayerData =
{
	Layer_name: String,
	Frames: Array<LayerFrameData>
}

typedef LayerFrameData =
{
	index: Int,
	?name: String,
	duration: Int,
	elements:Array<ElementData>
}

typedef ElementData =
{
	?ATLAS_SPRITE_instance:Dynamic,
	?SYMBOL_Instance: SymbolInstanceData
	
}

typedef SymbolInstanceData =
{
	SYMBOL_name: String,
	Instance_Name: String,
	bitmap: BitmapPosData,
	symbolType: String,
	transformationPoint: PointData,
	Matrix3D: Matrix3DData,
	?DecomposedMatrix: Decomposed3DData,
	?color: ColorData,
	
	?loop:String,
	firstFrame:Int,
}

typedef ColorData =
{
	mode: String,
	
	?RedMultiplier: Float,
	?greenMultiplier: Float,
	?blueMultiplier: Float,
	?alphaMultiplier: Float,
	
	?redOffset: Float,
	?greenOffset: Float,
	?blueOffset: Float,
	?AlphaOffset: Float
}

typedef BitmapPosData =
{
	name: String,
	Position: PointData,
}

typedef PointData =
{
	x:Int,
	y:Int
}

typedef Matrix3DData =
{
	m00: Float, m01: Float, m02: Float, m03: Float,
	m10: Float, m11: Float, m12: Float, m13: Float,
	m20: Float, m21: Float, m22: Float, m23: Float,
	m30: Float, m31: Float, m32: Float, m33: Float,
}

typedef Decomposed3DData =
{
	Position: { x:Float, y:Float, z:Float  },
	Rotation: { x:Float, y:Float, z:Float  },
	Scaling: { x:Float, y:Float, z:Float  },
}


abstract LooseMap<T>(Dynamic) from Dynamic
{
	inline public function get(name:String):T
	{
		return untyped this[name];
	}
	inline public function set(name:String, value:T):Void
	{
		untyped this[name] = value;
	}
}