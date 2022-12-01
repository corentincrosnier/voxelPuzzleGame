
function unstuck(obj,collider,collisionStep){
	if(place_meeting(obj.position[0]+room_width/2,obj.position[1]+room_height/2,collider)){
		for(var j=1;j<1000;j++){
			if(!place_meeting(obj.position[0]+room_width/2+j*collisionStep,obj.position[1]+room_height/2,collider)){
				obj.position[0]+=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2-j*collisionStep,obj.position[1]+room_height/2,collider)){
				obj.position[0]-=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2,obj.position[1]+room_height/2+j*collisionStep,collider)){
				obj.position[1]+=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2,obj.position[1]+room_height/2-j*collisionStep,collider)){
				obj.position[1]-=j*collisionStep;
				return 0;
			}
			
			if(!place_meeting(obj.position[0]+room_width/2+j*collisionStep,obj.position[1]+room_height/2+j*collisionStep,collider)){
				obj.position[0]+=j*collisionStep;
				obj.position[1]+=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2+j*collisionStep,obj.position[1]+room_height/2-j*collisionStep,collider)){
				obj.position[0]+=j*collisionStep;
				obj.position[1]-=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2-j*collisionStep,obj.position[1]+room_height/2+j*collisionStep,collider)){
				obj.position[0]-=j*collisionStep;
				obj.position[1]+=j*collisionStep;
				return 0;
			}
			if(!place_meeting(obj.position[0]+room_width/2-j*collisionStep,obj.position[1]+room_height/2-j*collisionStep,collider)){
				obj.position[0]-=j*collisionStep;
				obj.position[1]-=j*collisionStep;
				return 0;
			}
		}
	}
}