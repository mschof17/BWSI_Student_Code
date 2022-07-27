from simple_pid import PID

pid = PID(1, 0, 0, setpoint=0)

v = 10

control = pid(v)

print(f'Control: {control}')
