mob
	proc/Skillkaton(k)
		switch(k)
/////////////////KATON////////

			/*
			if("Fireblast")//grand Fireblast example, do if(2) if (3) for skillcards and edit those skillcards sindex value to 2 and 3
				view() << output("[src]: Katon-GrandFireblast no-Jutsu!", "combatlog")
				src.icon_state="blow"
				src.overlays+='breathfire.dmi'
				src.stunned=5
				var/mob/M=src.targeted
				src.Facedir(M)
				//AOE(x,y,z,radius,stamdamage,duration)
				if(src.dir==NORTH)
					spawn()AOE(src.x,src.y+3,src.z,2,30,500,src,5,1)//500 = health damage 50 = duration (5 seconds) health damage * 5 seconds = 30*5 = 150 dmg
					spawn()Fire(src.x,src.y+3,src.z,2,50)
				if(src.dir==SOUTH)
					spawn()AOE(src.x,src.y-3,src.z,2,30,500,src,5,1)
					spawn()Fire(src.x,src.y-3,src.z,2,50)
				if(src.dir==EAST)
					spawn()AOE(src.x+3,src.y,src.z,2,30,500,src,5,1)
					spawn()Fire(src.x+3,src.y,src.z,2,50)
				if(src.dir==WEST)
					spawn()AOE(src.x-3,src.y,src.z,2,30,500,src,5,1)
					spawn()Fire(src.x-3,src.y,src.z,2,50)
				spawn(50)
					src.icon_state=""
					src.overlays-='breathfire.dmi'

				*/
			if("Fireblast")
				view() << output("[src]: Katon-Fireblast no-Jutsu!", "combatlog")
				src.icon_state="blow"
				src.overlays+='createfire.dmi'
				src.canmove=0
				src.doing=1
				src.icon_state="blow"
				src.inmove=1//stop client calls
				var/mob/M=src.targeted
				src.Facedir(M)
				src.icon_state="blow"
				var/obj/KatonG/z=new /obj/KatonG
				z.dir=src.dir
				if(src.dir==NORTH)
					z.loc=locate(src.x, src.y+3, src.z)

				if(src.dir==SOUTH)
					z.loc=locate(src.x, src.y-3, src.z)

				if(src.dir==EAST)
					z.loc=locate(src.x+3, src.y, src.z)

				if(src.dir==WEST)
					z.loc=locate(src.x-3, src.y, src.z)
				src.icon_state="blow"
				src.canmove=0
				src.overlays-='createfire.dmi'
				src.icon_state="blow"
				z.dir=src.dir
				z.owner=src







			if("Multiple_FirePoenix")// housenka
				src.icon_state="blow"
				src << output("[src]: Multiple_FirePoenix", "combatlog")
				var/mob/M=src.targeted
				if(M)
					src.Facedir(M)//face M
				spawn()
					src.createhosenka()

				spawn(3)
					src.createhosenka()

				spawn(6)
					src.createhosenka()


			if("Mystic_Fire_Dragon")
				src << output("[src]: Mystic_Fire_Dragon", "combatlog")
				var/mob/M=src.targeted
				if(M)
					src.Facedir(M)//face M
				new/obj/KatonD(src.loc,src.dir,src)





mob
	proc
		createhosenka()
			//NORTH
			if(src.dir==NORTH)
				spawn()
					var/obj/Katonball/A = new /obj/Katonball(locate(src.x, src.y+1, src.z))
					A.dir=NORTH
					A.owner=src
					animate(A, transform = matrix()*2, alpha = 0, time = 5)
					walk(A,NORTH,1)
				spawn()
					var/obj/Katonball/D = new /obj/Katonball(locate(src.x+2, src.y+1, src.z))
					D.dir=NORTH
					D.owner=src
					animate(D, transform = matrix()*2, alpha = 0, time = 5)
					walk(D,NORTH,1)

				spawn()
					var/obj/Katonball/E = new /obj/Katonball(locate(src.x-2, src.y+1, src.z))
					E.dir=NORTH
					E.owner=src
					animate(E, transform = matrix()*2, alpha = 0, time = 5)
					walk(E,NORTH,1)

				spawn()
					var/obj/Katonball/B = new /obj/Katonball(locate(src.x-1, src.y+1, src.z))
					B.owner=src
					B.dir=NORTHWEST
					animate(B, transform = matrix()*2, alpha = 0, time = 5)
					walk(B,NORTHWEST,1)


				spawn()
					var/obj/Katonball/C = new /obj/Katonball(locate(src.x+1, src.y+1, src.z))
					C.dir=NORTHEAST
					C.owner=src
					animate(C, transform = matrix()*2, alpha = 0, time = 5)
					walk(C,NORTHEAST,1)




			if(src.dir==SOUTH)
				spawn()
					var/obj/Katonball/A = new /obj/Katonball(locate(src.x, src.y-1, src.z))
					A.dir=SOUTH
					A.owner=src
					animate(A, transform = matrix()*2, alpha = 0, time = 5)
					walk(A,SOUTH,1)

				spawn()
					var/obj/Katonball/B = new /obj/Katonball(locate(src.x-1, src.y-1, src.z))
					B.owner=src
					B.dir=SOUTHWEST
					animate(B, transform = matrix()*2, alpha = 0, time = 5)
					walk(B,SOUTHWEST,1)

				spawn()
					var/obj/Katonball/C = new /obj/Katonball(locate(src.x+1, src.y-1, src.z))
					C.dir=SOUTHEAST
					C.owner=src
					animate(C, transform = matrix()*2, alpha = 0, time = 5)
					walk(C,SOUTHEAST,1)

				spawn()
					var/obj/Katonball/D = new /obj/Katonball(locate(src.x+2, src.y-1, src.z))
					D.dir=SOUTH
					D.owner=src
					animate(D, transform = matrix()*2, alpha = 0, time = 5)
					walk(D,SOUTH,1)

				spawn()
					var/obj/Katonball/E = new /obj/Katonball(locate(src.x-2, src.y-1, src.z))
					E.dir=SOUTH
					E.owner=src
					animate(E, transform = matrix()*2, alpha = 0, time = 5)
					walk(E,SOUTH,1)






			if(src.dir==EAST)
				spawn()
					var/obj/Katonball/A = new /obj/Katonball(locate(src.x+1, src.y, src.z))
					A.dir=EAST
					A.owner=src
					animate(A, transform = matrix()*2, alpha = 0, time = 5)
					walk(A,EAST,1)

				spawn()
					var/obj/Katonball/B = new /obj/Katonball(locate(src.x+1, src.y+1, src.z))
					B.owner=src
					B.dir=NORTHEAST
					animate(B, transform = matrix()*2, alpha = 0, time = 5)
					walk(B,NORTHEAST,1)

				spawn()
					var/obj/Katonball/C = new /obj/Katonball(locate(src.x+1, src.y-1, src.z))
					C.dir=SOUTHEAST
					C.owner=src
					animate(C, transform = matrix()*2, alpha = 0, time = 5)
					walk(C,SOUTHEAST,1)

				spawn()
					var/obj/Katonball/D = new /obj/Katonball(locate(src.x+1, src.y+2, src.z))
					D.dir=EAST
					D.owner=src
					animate(D, transform = matrix()*2, alpha = 0, time = 5)
					walk(D,EAST,1)

				spawn()
					var/obj/Katonball/E = new /obj/Katonball(locate(src.x+1, src.y-2, src.z))
					E.dir=EAST
					E.owner=src
					animate(E, transform = matrix()*2, alpha = 0, time = 5)
					walk(E,EAST,1)






			if(src.dir==WEST)
				spawn()
					var/obj/Katonball/A = new /obj/Katonball(locate(src.x-1, src.y, src.z))
					A.dir=WEST
					A.owner=src
					animate(A, transform = matrix()*2, alpha = 0, time = 5)
					walk(A,WEST,1)

				spawn()
					var/obj/Katonball/B = new /obj/Katonball(locate(src.x-1, src.y+1, src.z))
					B.owner=src
					B.dir=NORTHWEST
					animate(B, transform = matrix()*2, alpha = 0, time = 5)
					walk(B,NORTHWEST,1)

				spawn()
					var/obj/Katonball/C = new /obj/Katonball(locate(src.x-1, src.y-1, src.z))
					C.dir=SOUTHEAST
					C.owner=src
					animate(C, transform = matrix()*2, alpha = 0, time = 5)
					walk(C,SOUTHEAST,1)

				spawn()
					var/obj/Katonball/D = new /obj/Katonball(locate(src.x-1, src.y+2, src.z))
					D.dir=WEST
					D.owner=src
					animate(D, transform = matrix()*2, alpha = 0, time = 5)
					walk(D,WEST,1)

				spawn()
					var/obj/Katonball/E = new /obj/Katonball(locate(src.x-1, src.y-2, src.z))
					E.dir=WEST
					E.owner=src
					animate(E, transform = matrix()*2, alpha = 0, time = 5)
					walk(E,WEST,1)




