#include <stdio.h>
#include <linux/input.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define DEV_PATH "/dev/input/event0"   //difference is possible
#define SEARCH_ID "/sys/class/leds/orangepi:red:status/brightness"

static int restore_factory(void) {
    int res_fac =  open(SEARCH_ID, O_WRONLY);

    write(res_fac,"0",1);
    sleep(10);
    write(res_fac,"1",1);

    close(res_fac);
    return 0;
}

int main(void)
{
    int keys_fd;
//    char ret[2];
    struct input_event t;

	int res_fac =  open(SEARCH_ID, O_WRONLY);
	write(res_fac,"1",1);
	close(res_fac);

    keys_fd = open(DEV_PATH, O_RDONLY);
    if(keys_fd <= 0) {
        printf("open /dev/input/event0 device error!\n");
        return -1;
    }

    while(1) {
        if(read(keys_fd, &t, sizeof(t)) == sizeof(t)) {
            if(t.type == EV_KEY ) {
                if( t.value == 1) {
                    printf("key %d \n", t.code);
                    if(t.code == KEY_POWER) {
			printf("Wifi restore factory\n");
                        restore_factory();
			//printf("Wifi restore factory\n");
                        //break;
                    }
                }
            }
       }
    }

    close(keys_fd);
    return 0;
}
