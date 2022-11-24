//
// Simple passthrough fragment shader
//


varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define MAXVOXEL 1000


//uniform float A;
//uniform float3 B;
//uniform float2x2 C;
uniform mat4 planeTransform;
uniform mat4 objectTransformInv;
//uniform bool voxelMap[MAXVOXEL];
uniform int sizeX;
uniform int sizeY;
uniform int sizeZ;
//uniform Buffer<bool> voxelMap;
//uniform Buffer<int> voxelMap;
//uniform bool voxelMap;
uniform sampler2D voxelMap;
uniform int surfSize;

void main(){
	
	
	vec4 target = objectTransformInv * planeTransform * vec4((v_vTexcoord.x-0.5)*2.0,(v_vTexcoord.y-0.5)*2.0,0.0,1.0);
	int targetX=int(target.x);
	int targetY=int(target.y);
	int targetZ=int(target.z);
	if(targetX>=0 && targetX<=sizeX){
		if(targetY>=0 && targetY<=sizeY){
			if(targetZ>=0 && targetZ<=sizeZ){
				int ind=targetX+targetY*sizeX+targetZ*sizeX*sizeY;
				float surfX=mod(float(ind),float(surfSize));
				float surfY=float((ind)/surfSize);
				vec4 val=texture2D(voxelMap,vec2(surfX/float(surfSize),surfY/float(surfSize)));
				if(val.r>0.0){
					gl_FragColor=vec4(0.0,0.0,0.0,1.0);
				}
				else{
					gl_FragColor=vec4(1.0,1.0,1.0,1.0);
				}
			}
			else
				gl_FragColor=vec4(0.0,0.0,1.0,1.0);
		}
		else
			gl_FragColor=vec4(0.0,1.0,0.0,1.0);
	}
	else
		gl_FragColor=vec4(1.0,0.0,0.0,1.0);
}
/*


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