switch n {
	case 0: index = (DISTANCE%10)/1; break;
	case 1: index = (DISTANCE%100)/10; break;
	case 2: index = (DISTANCE%1000)/100; break;
	case 3: index = (DISTANCE%10000)/1000; break;
	case 4: index = (DISTANCE%100000)/10000; break;
}
index = floor(index);
if (state = 0) and (prevIndex != index) {
	image_speed = 2.1-n*0.39;
	state = 1;
}


prevIndex = index;