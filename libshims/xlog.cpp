#include <cutils/log.h>

extern "C" {

#ifndef __unused
#define __unused  __attribute__((__unused__))
#endif
struct xlog_record {
    const char *tag_str;
    const char *fmt_str;
    int prio;
};

#if defined(_WIN32)
void __attribute__((weak)) __xlog_buf_printf(int bufid __unused, const struct xlog_record *xlog_record __unused, ...) {
  va_list args;
  va_start(args, xlog_record);
  LOG_PRI_VA(xlog_record->prio, xlog_record->tag_str, xlog_record->fmt_str, args);
  va_end(args);
}
#else
__attribute__((visibility("default"))) void __attribute__((weak)) __xlog_buf_printf(int bufid __unused, const struct xlog_record *xlog_record __unused, ...) {
  va_list args;
  va_start(args, xlog_record);
  LOG_PRI_VA(xlog_record->prio, xlog_record->tag_str, xlog_record->fmt_str, args);
  va_end(args);
}
#endif
}

