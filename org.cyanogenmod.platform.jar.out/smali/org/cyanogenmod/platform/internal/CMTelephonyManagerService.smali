.class public Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
.super Lcom/android/server/SystemService;
.source "CMTelephonyManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMTelephonyManagerSrv"

.field private static localLOGD:Z


# instance fields
.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "CMTelephonyManagerSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mService:Landroid/os/IBinder;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V

    return-void
.end method

.method static synthetic access$100(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultSmsSub(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isSubActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V

    return-void
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setSubState(IZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionSelectedOnSub(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionState(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionSelectedOnSub(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultPhoneSub(I)V

    return-void
.end method

.method private enforceTelephonyModifyPermission()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_MSIM_PHONE_STATE"

    const-string v2, "CMTelephonyManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private enforceTelephonyReadPermission()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.READ_MSIM_PHONE_STATE"

    const-string v2, "CMTelephonyManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 194
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "CMTelephonyManagerSrv"

    const-string v3, "The active subscriptions where obtained from the subscription manager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-object v0
.end method

.method private isDataConnectionEnabled()Z
    .locals 4

    .prologue
    .line 261
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "CMTelephonyManagerSrv"

    const-string v2, "Checking if the network data connection is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 267
    .local v0, "dataEnabled":Z
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data network connection is inactive (false) or active (true): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    return v0
.end method

.method private isDataConnectionSelectedOnSub(I)Z
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 242
    .local v0, "validSubscriptionId":Z
    if-eqz v0, :cond_3

    .line 243
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 244
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data connection selected for subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const/4 v1, 0x1

    .line 256
    :cond_1
    :goto_0
    return v1

    .line 249
    :cond_2
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data connection not selected for subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_3
    const-string v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subscription identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSubActive(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 204
    .local v1, "validSubscriptionId":Z
    if-eqz v1, :cond_2

    .line 205
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSubscriber(I)I

    move-result v0

    .line 206
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_0

    .line 216
    :pswitch_0
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    const/4 v2, 0x1

    .line 223
    .end local v0    # "simState":I
    :cond_1
    :goto_0
    return v2

    .line 211
    .restart local v0    # "simState":I
    :pswitch_1
    sget-boolean v3, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "CMTelephonyManagerSrv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NOT active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0    # "simState":I
    :cond_2
    const-string v3, "CMTelephonyManagerSrv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid subscription identifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDataConnectionSelectedOnSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 287
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting the network data connection for subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 292
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 293
    return-void
.end method

.method private setDataConnectionState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 275
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the network data connection inactive (false) or active (true): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    goto :goto_0
.end method

.method private setDefaultPhoneSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 296
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting the SIM for phone calls on subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 301
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez p1, :cond_2

    .line 302
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_1

    .line 303
    const-string v1, "CMTelephonyManagerSrv"

    const-string v2, "Activates the prompt for phone calls"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_0
.end method

.method private setDefaultSmsSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 313
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting the SIM for phone calls on subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 318
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez p1, :cond_2

    .line 319
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_1

    .line 320
    const-string v1, "CMTelephonyManagerSrv"

    const-string v2, "Activates the prompt for SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 325
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0
.end method

.method private setSubState(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 228
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to inactive (false) or active (true): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    if-eqz p2, :cond_1

    .line 233
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 184
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM telephony manager service start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    const-string v0, "cmtelephonymanager"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 190
    return-void
.end method
