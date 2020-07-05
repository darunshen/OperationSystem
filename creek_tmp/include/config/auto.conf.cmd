deps_config := \
	mm/Kconfig \
	init/Kconfig \
	arch/x86/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(SRCARCH)" "x86"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
