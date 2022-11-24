//
// Simple passthrough fragment shader
//

struct ps_input{
	float4 position: SV_POSITION;
	float2 uv: TEXCOORD;
	float4 color: COLOR;
};

struct ps_output{
	float4 color: SV_TARGET;
};

#define MAXVOXEL 10000


//uniform float A;
//uniform float3 B;
//uniform float2x2 C;
uniform float4x4 planeTransform;
uniform float4x4 objectTransformInv;
//uniform bool voxelMap[MAXVOXEL];
uniform int sizeX;
uniform int sizeY;
uniform int sizeZ;
//uniform Buffer<bool> voxelMap;
//uniform Buffer<int> voxelMap;
//uniform bool voxelMap;
uniform sampler2D intersectMask;

ps_output main(ps_input input){
	ps_output output;
	//float4x4 A=inverse(planeTransform);
	float planeScale=planeTransform[0][0];
	float4 target = mul(planeTransform,float4((input.uv.x-0.5)*2,(input.uv.y-0.5)*2,0,1));
	int targetX=int(target.x);
	int targetY=int(target.y);
	int targetZ=int(target.z);
	if(targetX>=0 && targetX<=sizeX){
		if(targetY>=0 && targetY<=sizeY){
			if(targetZ>=0 && targetZ<=sizeZ){
				int ind=targetX+targetY*sizeX+targetZ*sizeX*sizeY;
				//if(ind>=0 ){
					if(int(voxelMap[ind])!=0){
						output.color=float4(0.0,0.0,0.0,1.0);
					}
					else{
						output.color=float4(1.0,1.0,1.0,1.0);
					}
				//}
				//else
				//	output.color=float4(0.5,0.5,0.5,1.0);
			}
			else
				output.color=float4(0,0,1,1.0);
		}
		else
			output.color=float4(0,1,0,1.0);
	}
	else
		output.color=float4(1,0,0,1.0);
	//float4 planePos=mul(planeTransform,float4(0,0,0,1));
	//float planeZ=planePos.z;
	
	//ivec3 targetInt = ivec3(int(target.x),int(target.y),int(target.z));
	/*
	int index=int(target.x)+int(target.y)*voxelSize.Load(0)+int(target.z)*voxelSize.Load(0)*voxelSize.Load(1);
	if(index>=0 && index<(voxelSize.Load(0)*voxelSize.Load(1)*voxelSize.Load(2))){
		if(voxelMap.Load(index)==1){
			output.color=float4(0.0,0.0,0.0,1.0);
		}
		else{
			output.color=float4(1.0,1.0,1.0,1.0);
		}
	}
	else
		output.color=float4(1,0,0,1);
	*/
	/*
	if(index>=0 && index<(voxelSize.Load(0)*voxelSize.Load(1)*voxelSize.Load(2))){
		if(voxelMap.Load(index)==1){
			output.color=float4(0.0,0.0,0.0,1.0);
		}
		else{
			output.color=float4(1.0,1.0,1.0,1.0);
		}
	}
	else
		output.color=float4(1,0,0,1);
	*/
	//output.color=float4(voxelMap[0],0,0,1);
	//output.color=input.color*gm_BaseTextureObject.Sample(gm_BaseTexture,input.uv);
	return output;
}
/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


const int maxVoxel=10000;



uniform mat4 planeTransform;
uniform mat4 objectTransformInv;
uniform float voxelMap[maxVoxel];
uniform ivec3 voxelSize;
uniform sampler2D intersectMask;



void main()
{
	vec4 target = planeTransform * objectTransformInv * vec4(v_vTexcoord.xy*60.0,0.0,1.0);
	//ivec3 targetInt = ivec3(int(target.x),int(target.y),int(target.z));
	int index=int(target.x)+int(target.y)*voxelSize.x+int(target.z)*voxelSize.x*voxelSize.y;


	if(index>=0 && index<10){
		
		if(voxelMap[index]>0.0){
			gl_FragColor=vec4(0.0,0.0,0.0,1.0);
		}
		else{
			gl_FragColor=vec4(1.0,1.0,1.0,1.0);
		}
		
		gl_FragColor=vec4(1.0,0.0,0.0,1.0);
	}
	gl_FragColor=vec4(1.0,0.0,0.0,1.0);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
*/