.class Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;
.super Ljava/lang/Object;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCMHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 2

    .prologue
    .line 100
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 101
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 103
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 105
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 107
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 109
    :cond_3
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 111
    :cond_4
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 113
    :cond_5
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 115
    :cond_6
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 117
    :cond_7
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 119
    :cond_8
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 121
    :cond_9
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 123
    :cond_a
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 125
    :cond_b
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 127
    :cond_c
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 129
    :cond_d
    invoke-static {}, Lorg/cyanogenmod/hardware/PersistentStorage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 131
    :cond_e
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 132
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 133
    :cond_f
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 190
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v3

    .line 203
    :cond_1
    :goto_0
    return-object v1

    .line 193
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "strArray":[Ljava/lang/String;
    :try_start_0
    array-length v4, v2

    new-array v1, v4, [I

    .line 196
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 197
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "i":I
    .end local v1    # "intArray":[I
    :catch_0
    move-exception v4

    move-object v1, v3

    .line 203
    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 140
    sparse-switch p1, :sswitch_data_0

    .line 160
    # getter for: Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 142
    :sswitch_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 146
    :sswitch_2
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 148
    :sswitch_3
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isActive()Z

    move-result v0

    goto :goto_0

    .line 150
    :sswitch_4
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 152
    :sswitch_5
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 154
    :sswitch_6
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 156
    :sswitch_7
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 158
    :sswitch_8
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
        0x8000 -> :sswitch_8
    .end sparse-switch
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getCurrentMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getDefaultMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 218
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 219
    :cond_0
    # getter for: Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 222
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 223
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 224
    aget v2, v1, v5

    aput v2, v0, v5

    .line 225
    aget v2, v1, v6

    aput v2, v0, v6

    .line 226
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    aput v2, v0, v7

    .line 228
    const/4 v2, 0x4

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v3

    aput v3, v0, v2

    .line 230
    const/4 v2, 0x5

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v3

    aput v3, v0, v2

    goto :goto_0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 8
    .param p1, "idx"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 245
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 246
    :cond_0
    # getter for: Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 249
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 250
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 251
    aget v2, v1, v5

    aput v2, v0, v5

    .line 252
    aget v2, v1, v6

    aput v2, v0, v6

    .line 253
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    aput v2, v0, v7

    .line 255
    const/4 v2, 0x4

    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v3

    aput v3, v0, v2

    goto :goto_0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getAvailableModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    .line 265
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 266
    .local v0, "vibrator":[I
    const/4 v1, 0x0

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 267
    const/4 v1, 0x1

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 268
    const/4 v1, 0x2

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 269
    const/4 v1, 0x3

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v2

    aput v2, v0, v1

    .line 270
    const/4 v1, 0x4

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v2

    aput v2, v0, v1

    .line 271
    return-object v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-static {p1}, Lorg/cyanogenmod/hardware/PersistentStorage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 166
    sparse-switch p1, :sswitch_data_0

    .line 184
    # getter for: Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 168
    :sswitch_0
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 170
    :sswitch_1
    invoke-static {p2}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 172
    :sswitch_2
    invoke-static {p2}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 174
    :sswitch_3
    invoke-static {p2}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    goto :goto_0

    .line 176
    :sswitch_4
    invoke-static {p2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 178
    :sswitch_5
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 180
    :sswitch_6
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 182
    :sswitch_7
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AutoContrast;->setEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 1
    .param p1, "rgb"    # [I

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 261
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 1
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 312
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/DisplayModeControl;->setMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 275
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 316
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/PersistentStorage;->set(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
