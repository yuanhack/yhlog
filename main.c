#include "yhlog.h"


int main(void)
{
    open_log("test.log", 32);

    tlog_out("123456789");

    return 0;
}
