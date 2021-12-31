# Now it is time to reboot the system to boot the newly installed kernel. 
# Before we do that, 
# let's save the logs from the current kernel to compare and look for regressions and new errors, 
# if any.
dmesg -t > dmesg_current
dmesg -t -k > dmesg_kernel
dmesg -t -l emerg > dmesg_current_emerg
dmesg -t -l alert > dmesg_current_alert
dmesg -t -l crit > dmesg_current_crit
dmesg -t -l err > dmesg_current_err
dmesg -t -l warn > dmesg_current_warn

# In general, dmesg should be clean with no emerg, alert, crit, and err level messages. If you see any of these, it might indicate some hardware and/or kernel problem.