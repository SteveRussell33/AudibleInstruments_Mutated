FLAGS += \
	-DTEST \
	-I./Mutated-Mutables \
	-Wno-unused-local-typedefs

SOURCES += $(wildcard src/*.cpp)

SOURCES += Mutated-Mutables/stmlib/utils/random.cc

# SOURCES += Mutated-Mutables/braids/macro_oscillator.cc
# SOURCES += Mutated-Mutables/braids/analog_oscillator.cc
# SOURCES += Mutated-Mutables/braids/digital_oscillator.cc
# SOURCES += Mutated-Mutables/braids/resources.cc

SOURCES += Mutated-Mutables/peaks/processors.cc
SOURCES += Mutated-Mutables/peaks/resources.cc
SOURCES += Mutated-Mutables/peaks/drums/bass_drum.cc
SOURCES += Mutated-Mutables/peaks/drums/cymbal.cc # https://github.com/timchurches/Mutated-Mutables/pull/8/commits
SOURCES += Mutated-Mutables/peaks/drums/fm_drum.cc
SOURCES += Mutated-Mutables/peaks/drums/high_hat.cc
SOURCES += Mutated-Mutables/peaks/drums/snare_drum.cc
SOURCES += Mutated-Mutables/peaks/modulations/lfo.cc
SOURCES += Mutated-Mutables/peaks/modulations/multistage_envelope.cc
SOURCES += Mutated-Mutables/peaks/pulse_processor/pulse_shaper.cc
SOURCES += Mutated-Mutables/peaks/pulse_processor/pulse_randomizer.cc
SOURCES += Mutated-Mutables/peaks/number_station/number_station.cc
SOURCES += Mutated-Mutables/peaks/number_station/bytebeats.cc

# Streams enhancements are from MM PR8 commit 0fee84afeb112429b23e4126d49a4d47e42abf4a
# SOURCES += Mutated-Mutables/streams/resources.cc
# SOURCES += Mutated-Mutables/streams/processor.cc
# SOURCES += Mutated-Mutables/streams/follower.cc
# SOURCES += Mutated-Mutables/streams/lorenz_generator.cc
# SOURCES += Mutated-Mutables/streams/envelope.cc
# SOURCES += Mutated-Mutables/streams/svf.cc # Had to be added manually
# SOURCES += Mutated-Mutables/streams/vactrol.cc
# SOURCES += Mutated-Mutables/streams/compressor.cc

DISTRIBUTABLES += $(wildcard LICENSE*) res

RACK_DIR ?= ../..
include $(RACK_DIR)/plugin.mk
