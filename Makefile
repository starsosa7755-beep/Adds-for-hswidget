TARGET := iphone:clang:latest:12.0
ARCHS := arm64
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = HSWStudioWidget
HSWStudioWidget_FILES = src/HSWStudioWidgetViewController.m
HSWStudioWidget_FRAMEWORKS = UIKit
HSWStudioWidget_EXTRA_FRAMEWORKS = HSWidgets
HSWStudioWidget_INSTALL_PATH = /Library/HSWidgets
HSWStudioWidget_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
