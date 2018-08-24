#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=conf_file.c main.c ledrgb.c mode_selector.c proximity_sensor.c ledmatrix.c bluetooth.c motor_driver.c pruebas.c mux_chaume.c mux_test.c start_button.c proximity_test.c mux_final.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/conf_file.o ${OBJECTDIR}/main.o ${OBJECTDIR}/ledrgb.o ${OBJECTDIR}/mode_selector.o ${OBJECTDIR}/proximity_sensor.o ${OBJECTDIR}/ledmatrix.o ${OBJECTDIR}/bluetooth.o ${OBJECTDIR}/motor_driver.o ${OBJECTDIR}/pruebas.o ${OBJECTDIR}/mux_chaume.o ${OBJECTDIR}/mux_test.o ${OBJECTDIR}/start_button.o ${OBJECTDIR}/proximity_test.o ${OBJECTDIR}/mux_final.o
POSSIBLE_DEPFILES=${OBJECTDIR}/conf_file.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/ledrgb.o.d ${OBJECTDIR}/mode_selector.o.d ${OBJECTDIR}/proximity_sensor.o.d ${OBJECTDIR}/ledmatrix.o.d ${OBJECTDIR}/bluetooth.o.d ${OBJECTDIR}/motor_driver.o.d ${OBJECTDIR}/pruebas.o.d ${OBJECTDIR}/mux_chaume.o.d ${OBJECTDIR}/mux_test.o.d ${OBJECTDIR}/start_button.o.d ${OBJECTDIR}/proximity_test.o.d ${OBJECTDIR}/mux_final.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/conf_file.o ${OBJECTDIR}/main.o ${OBJECTDIR}/ledrgb.o ${OBJECTDIR}/mode_selector.o ${OBJECTDIR}/proximity_sensor.o ${OBJECTDIR}/ledmatrix.o ${OBJECTDIR}/bluetooth.o ${OBJECTDIR}/motor_driver.o ${OBJECTDIR}/pruebas.o ${OBJECTDIR}/mux_chaume.o ${OBJECTDIR}/mux_test.o ${OBJECTDIR}/start_button.o ${OBJECTDIR}/proximity_test.o ${OBJECTDIR}/mux_final.o

# Source Files
SOURCEFILES=conf_file.c main.c ledrgb.c mode_selector.c proximity_sensor.c ledmatrix.c bluetooth.c motor_driver.c pruebas.c mux_chaume.c mux_test.c start_button.c proximity_test.c mux_final.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/conf_file.o: conf_file.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conf_file.o.d 
	@${RM} ${OBJECTDIR}/conf_file.o 
	@${FIXDEPS} "${OBJECTDIR}/conf_file.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/conf_file.o.d" -o ${OBJECTDIR}/conf_file.o conf_file.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/ledrgb.o: ledrgb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ledrgb.o.d 
	@${RM} ${OBJECTDIR}/ledrgb.o 
	@${FIXDEPS} "${OBJECTDIR}/ledrgb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ledrgb.o.d" -o ${OBJECTDIR}/ledrgb.o ledrgb.c   
	
${OBJECTDIR}/mode_selector.o: mode_selector.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mode_selector.o.d 
	@${RM} ${OBJECTDIR}/mode_selector.o 
	@${FIXDEPS} "${OBJECTDIR}/mode_selector.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mode_selector.o.d" -o ${OBJECTDIR}/mode_selector.o mode_selector.c   
	
${OBJECTDIR}/proximity_sensor.o: proximity_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/proximity_sensor.o.d 
	@${RM} ${OBJECTDIR}/proximity_sensor.o 
	@${FIXDEPS} "${OBJECTDIR}/proximity_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/proximity_sensor.o.d" -o ${OBJECTDIR}/proximity_sensor.o proximity_sensor.c   
	
${OBJECTDIR}/ledmatrix.o: ledmatrix.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ledmatrix.o.d 
	@${RM} ${OBJECTDIR}/ledmatrix.o 
	@${FIXDEPS} "${OBJECTDIR}/ledmatrix.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ledmatrix.o.d" -o ${OBJECTDIR}/ledmatrix.o ledmatrix.c   
	
${OBJECTDIR}/bluetooth.o: bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/bluetooth.o 
	@${FIXDEPS} "${OBJECTDIR}/bluetooth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/bluetooth.o.d" -o ${OBJECTDIR}/bluetooth.o bluetooth.c   
	
${OBJECTDIR}/motor_driver.o: motor_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/motor_driver.o.d 
	@${RM} ${OBJECTDIR}/motor_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/motor_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/motor_driver.o.d" -o ${OBJECTDIR}/motor_driver.o motor_driver.c   
	
${OBJECTDIR}/pruebas.o: pruebas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pruebas.o.d 
	@${RM} ${OBJECTDIR}/pruebas.o 
	@${FIXDEPS} "${OBJECTDIR}/pruebas.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pruebas.o.d" -o ${OBJECTDIR}/pruebas.o pruebas.c   
	
${OBJECTDIR}/mux_chaume.o: mux_chaume.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_chaume.o.d 
	@${RM} ${OBJECTDIR}/mux_chaume.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_chaume.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_chaume.o.d" -o ${OBJECTDIR}/mux_chaume.o mux_chaume.c   
	
${OBJECTDIR}/mux_test.o: mux_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_test.o.d 
	@${RM} ${OBJECTDIR}/mux_test.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_test.o.d" -o ${OBJECTDIR}/mux_test.o mux_test.c   
	
${OBJECTDIR}/start_button.o: start_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/start_button.o.d 
	@${RM} ${OBJECTDIR}/start_button.o 
	@${FIXDEPS} "${OBJECTDIR}/start_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/start_button.o.d" -o ${OBJECTDIR}/start_button.o start_button.c   
	
${OBJECTDIR}/proximity_test.o: proximity_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/proximity_test.o.d 
	@${RM} ${OBJECTDIR}/proximity_test.o 
	@${FIXDEPS} "${OBJECTDIR}/proximity_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/proximity_test.o.d" -o ${OBJECTDIR}/proximity_test.o proximity_test.c   
	
${OBJECTDIR}/mux_final.o: mux_final.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_final.o.d 
	@${RM} ${OBJECTDIR}/mux_final.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_final.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_final.o.d" -o ${OBJECTDIR}/mux_final.o mux_final.c   
	
else
${OBJECTDIR}/conf_file.o: conf_file.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/conf_file.o.d 
	@${RM} ${OBJECTDIR}/conf_file.o 
	@${FIXDEPS} "${OBJECTDIR}/conf_file.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/conf_file.o.d" -o ${OBJECTDIR}/conf_file.o conf_file.c   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/ledrgb.o: ledrgb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ledrgb.o.d 
	@${RM} ${OBJECTDIR}/ledrgb.o 
	@${FIXDEPS} "${OBJECTDIR}/ledrgb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ledrgb.o.d" -o ${OBJECTDIR}/ledrgb.o ledrgb.c   
	
${OBJECTDIR}/mode_selector.o: mode_selector.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mode_selector.o.d 
	@${RM} ${OBJECTDIR}/mode_selector.o 
	@${FIXDEPS} "${OBJECTDIR}/mode_selector.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mode_selector.o.d" -o ${OBJECTDIR}/mode_selector.o mode_selector.c   
	
${OBJECTDIR}/proximity_sensor.o: proximity_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/proximity_sensor.o.d 
	@${RM} ${OBJECTDIR}/proximity_sensor.o 
	@${FIXDEPS} "${OBJECTDIR}/proximity_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/proximity_sensor.o.d" -o ${OBJECTDIR}/proximity_sensor.o proximity_sensor.c   
	
${OBJECTDIR}/ledmatrix.o: ledmatrix.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ledmatrix.o.d 
	@${RM} ${OBJECTDIR}/ledmatrix.o 
	@${FIXDEPS} "${OBJECTDIR}/ledmatrix.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ledmatrix.o.d" -o ${OBJECTDIR}/ledmatrix.o ledmatrix.c   
	
${OBJECTDIR}/bluetooth.o: bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/bluetooth.o 
	@${FIXDEPS} "${OBJECTDIR}/bluetooth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/bluetooth.o.d" -o ${OBJECTDIR}/bluetooth.o bluetooth.c   
	
${OBJECTDIR}/motor_driver.o: motor_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/motor_driver.o.d 
	@${RM} ${OBJECTDIR}/motor_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/motor_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/motor_driver.o.d" -o ${OBJECTDIR}/motor_driver.o motor_driver.c   
	
${OBJECTDIR}/pruebas.o: pruebas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pruebas.o.d 
	@${RM} ${OBJECTDIR}/pruebas.o 
	@${FIXDEPS} "${OBJECTDIR}/pruebas.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pruebas.o.d" -o ${OBJECTDIR}/pruebas.o pruebas.c   
	
${OBJECTDIR}/mux_chaume.o: mux_chaume.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_chaume.o.d 
	@${RM} ${OBJECTDIR}/mux_chaume.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_chaume.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_chaume.o.d" -o ${OBJECTDIR}/mux_chaume.o mux_chaume.c   
	
${OBJECTDIR}/mux_test.o: mux_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_test.o.d 
	@${RM} ${OBJECTDIR}/mux_test.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_test.o.d" -o ${OBJECTDIR}/mux_test.o mux_test.c   
	
${OBJECTDIR}/start_button.o: start_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/start_button.o.d 
	@${RM} ${OBJECTDIR}/start_button.o 
	@${FIXDEPS} "${OBJECTDIR}/start_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/start_button.o.d" -o ${OBJECTDIR}/start_button.o start_button.c   
	
${OBJECTDIR}/proximity_test.o: proximity_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/proximity_test.o.d 
	@${RM} ${OBJECTDIR}/proximity_test.o 
	@${FIXDEPS} "${OBJECTDIR}/proximity_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/proximity_test.o.d" -o ${OBJECTDIR}/proximity_test.o proximity_test.c   
	
${OBJECTDIR}/mux_final.o: mux_final.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mux_final.o.d 
	@${RM} ${OBJECTDIR}/mux_final.o 
	@${FIXDEPS} "${OBJECTDIR}/mux_final.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mux_final.o.d" -o ${OBJECTDIR}/mux_final.o mux_final.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Test_Components.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
