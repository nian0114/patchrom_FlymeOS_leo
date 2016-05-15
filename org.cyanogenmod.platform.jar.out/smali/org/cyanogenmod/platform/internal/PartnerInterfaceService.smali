.class public Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.super Lcom/android/server/SystemService;
.source "PartnerInterfaceService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMSettingsService"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;-><init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    .line 60
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "cmpartnerinterface"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifyNetworkSettingsPermission()V

    return-void
.end method

.method static synthetic access$100(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setAirplaneModeEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setMobileDataEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceShutdownPermission()V

    return-void
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->shutdownInternal(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifySoundSettingsPermission()V

    return-void
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setZenModeInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceCaptureHotwordPermission()V

    return-void
.end method

.method private enforceCaptureHotwordPermission()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    const-string v2, "You do not have permission to query the hotword input package name."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private enforceModifyNetworkSettingsPermission()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

    const-string v2, "You do not have permissions to change system network settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private enforceModifySoundSettingsPermission()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

    const-string v2, "You do not have permissions to change system sound settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private enforceShutdownPermission()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REBOOT"

    const-string v2, "You do not have permissions to shut down the device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private setAirplaneModeEnabledInternal(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 174
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 181
    return-void

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabledInternal(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 185
    return-void
.end method

.method private setZenModeInternal(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, -0x1

    .line 204
    .local v2, "zenModeValue":I
    packed-switch p1, :pswitch_data_0

    .line 216
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() called with invalid mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return v3

    .line 206
    :pswitch_0
    const/4 v2, 0x1

    .line 219
    :goto_1
    const-string v4, "zen_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v3, 0x1

    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v2, 0x0

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/4 v2, 0x2

    .line 213
    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() failed for mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shutdownInternal(Z)V
    .locals 5
    .param p1, "reboot"    # Z

    .prologue
    .line 188
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 191
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz p1, :cond_0

    .line 192
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMSettingsService"

    const-string v3, "Unable to shutdown."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getHotwordPackageNameInternal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 237
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->getCurrentHotwordInputPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMSettingsService"

    const-string v3, "getHotwordPackageName() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 70
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->mAudioService:Landroid/media/IAudioService;

    .line 72
    return-void
.end method
