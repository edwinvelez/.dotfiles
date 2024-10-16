# Bluetooth Workaround for Laptop

When powering on the laptop startup logs may return an error.

```shell
Bluetooth: hci0: command 0xfc05 tx timeout
```

## Troubleshooting

Disconnect the power adapter and restart the laptop. List available Bluetooth built-in devices.

```shell
bluetootchctl list
```

Plug in and unplug the laptop's power adapter between power ups and shutdowns. As you alternate between connections,
Bluetooth devices will alternate between found and not found status.

## Workaround Fix

Power up the laptop with the power adapter unplugged. Verify Bluetooth device availability. If found, (which it should
be), rebuild the Linux Kernel.

```shell
sudo mkinitcpio -P
```

Restart the laptop. Any Bluetooth devices should continue to be round. Alternate the power adapter's connection between
power up and shutdowns. If all works as expected Bluetooth devices should be listed regardless of power adapter status.