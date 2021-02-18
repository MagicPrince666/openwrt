MODULE_NAME = esp32_sdio

ifeq ($(CONFIG_SUPPORT_ESP_SERIAL), y)
	EXTRA_CFLAGS += -DCONFIG_SUPPORT_ESP_SERIAL
endif

ifeq ($(CONFIG_ENABLE_MONITOR_PROCESS), y)
	EXTRA_CFLAGS += -DCONFIG_ENABLE_MONITOR_PROCESS
endif

EXTRA_CFLAGS += -I$(PWD)

$(MODULE_NAME)-y := esp_bt.o main.o esp_sdio.o esp_sdio_api.o esp_serial.o esp_rb.o

obj-$(CONFIG_ESP32_SDIO) += esp32_sdio.o
