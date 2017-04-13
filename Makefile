#############################################################################
# Makefile for building: datacolletion
# Generated by qmake (3.0) (Qt 5.7.1)
# Project:  datacolletion.pro
# Template: app
# Command: G:\qt5.7\5.7\msvc2015\bin\qmake.exe -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile datacolletion.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = G:\qt5.7\5.7\msvc2015\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: datacolletion.pro ..\..\qt5.7\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf ..\..\qt5.7\5.7\msvc2015\mkspecs\features\spec_pre.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\common\angle.conf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\common\msvc-base.conf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\common\msvc-desktop.conf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\qconfig.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3drender.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3drender_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axbase.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axbase_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axserver.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axserver_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bootstrap_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_charts.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_charts_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_clucene_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_core.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_core_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_datavisualization.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_datavisualization_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_dbus.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_dbus_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designer.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designer_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designercomponents_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gui.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gui_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_help.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_help_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_location.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_location_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_network.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_network_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_nfc.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_nfc_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_opengl.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_opengl_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_platformsupport_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_positioning.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_positioning_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qml.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qml_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmldebug_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quick.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quick_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickparticles_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_script.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_script_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scxml.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scxml_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sensors.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sensors_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialport.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialport_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sql.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sql_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_svg.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_svg_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_testlib.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_testlib_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uiplugin.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uitools.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uitools_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webengine.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webengine_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_websockets.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_websockets_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webview.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webview_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_widgets.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_widgets_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_winextras.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_winextras_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xml.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xml_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_zlib_private.pri \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt_functions.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt_config.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\qt_config.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\spec_post.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\exclusive_builds.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\toolchain.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\default_pre.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\default_pre.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\resolve_config.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\exclusive_builds_post.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\default_post.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\qml_debug.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\rtti.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\precompile_header.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\warn_on.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\resources.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\moc.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\opengl.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\uic.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\file_copies.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\windows.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\testcase_targets.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\exceptions.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\yacc.prf \
		..\..\qt5.7\5.7\msvc2015\mkspecs\features\lex.prf \
		datacolletion.pro \
		..\..\qt5.7\5.7\msvc2015\lib\qtmaind.prl \
		..\..\qt5.7\5.7\msvc2015\lib\Qt5Widgets.prl \
		..\..\qt5.7\5.7\msvc2015\lib\Qt5Gui.prl \
		..\..\qt5.7\5.7\msvc2015\lib\Qt5Sql.prl \
		..\..\qt5.7\5.7\msvc2015\lib\Qt5Network.prl \
		..\..\qt5.7\5.7\msvc2015\lib\Qt5Core.prl
	$(QMAKE) -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile datacolletion.pro
..\..\qt5.7\5.7\msvc2015\mkspecs\features\spec_pre.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\common\angle.conf:
..\..\qt5.7\5.7\msvc2015\mkspecs\common\msvc-base.conf:
..\..\qt5.7\5.7\msvc2015\mkspecs\common\msvc-desktop.conf:
..\..\qt5.7\5.7\msvc2015\mkspecs\qconfig.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3drender.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_3drender_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axbase.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axbase_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axserver.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_axserver_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_bootstrap_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_charts.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_charts_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_clucene_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_core.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_core_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_datavisualization.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_datavisualization_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_dbus.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_dbus_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designer.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designer_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_designercomponents_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gui.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_gui_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_help.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_help_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_location.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_location_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_network.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_network_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_nfc.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_nfc_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_opengl.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_opengl_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_packetprotocol_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_platformsupport_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_positioning.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_positioning_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qml.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qml_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmldebug_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmldevtools_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quick.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quick_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickparticles_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_script.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_script_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scxml.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_scxml_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sensors.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sensors_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialport.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_serialport_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sql.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_sql_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_svg.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_svg_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_testlib.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_testlib_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uiplugin.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uitools.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_uitools_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webengine.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webengine_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_websockets.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_websockets_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webview.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_webview_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_widgets.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_widgets_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_winextras.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_winextras_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xml.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xml_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\modules\qt_lib_zlib_private.pri:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt_functions.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt_config.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\qt_config.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\spec_post.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\exclusive_builds.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\toolchain.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\default_pre.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\default_pre.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\resolve_config.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\exclusive_builds_post.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\default_post.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\qml_debug.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\rtti.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\precompile_header.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\warn_on.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\qt.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\resources.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\moc.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\opengl.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\uic.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\file_copies.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\win32\windows.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\testcase_targets.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\exceptions.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\yacc.prf:
..\..\qt5.7\5.7\msvc2015\mkspecs\features\lex.prf:
datacolletion.pro:
..\..\qt5.7\5.7\msvc2015\lib\qtmaind.prl:
..\..\qt5.7\5.7\msvc2015\lib\Qt5Widgets.prl:
..\..\qt5.7\5.7\msvc2015\lib\Qt5Gui.prl:
..\..\qt5.7\5.7\msvc2015\lib\Qt5Sql.prl:
..\..\qt5.7\5.7\msvc2015\lib\Qt5Network.prl:
..\..\qt5.7\5.7\msvc2015\lib\Qt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile datacolletion.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
	-$(DEL_FILE) datacolletion.exp
	-$(DEL_FILE) datacolletion.vc.pdb
	-$(DEL_FILE) datacolletion.ilk
	-$(DEL_FILE) datacolletion.idb
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) datacolletion.lib datacolletion.pdb

debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
