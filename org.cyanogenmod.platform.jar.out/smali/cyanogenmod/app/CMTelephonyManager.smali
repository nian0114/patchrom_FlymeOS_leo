.class public Lcyanogenmod/app/CMTelephonyManager;
.super Ljava/lang/Object;
.source "CMTelephonyManager.java"


# static fields
.field public static final ASK_FOR_SUBSCRIPTION_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMTelephonyManager"

.field private static localLOGD:Z

.field private static sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

.field private static sService:Lcyanogenmod/app/ICMTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "CMTelephonyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 53
    iput-object v0, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcyanogenmod/app/CMTelephonyManager;->getService()Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    .line 58
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcyanogenmod/app/CMTelephonyManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/CMTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    .line 69
    :cond_0
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lcyanogenmod/app/ICMTelephonyManager;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    .line 82
    :goto_0
    return-object v1

    .line 77
    :cond_0
    const-string v1, "cmtelephonymanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 79
    invoke-static {v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    .line 80
    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubInformation()Ljava/util/List;
    .locals 6
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
    .line 93
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_1

    .line 94
    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v2, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object v2

    .line 98
    :cond_1
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the SIMs information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 104
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->getSubInformation()Ljava/util/List;

    move-result-object v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    const-string v3, "CMTelephonyManager"

    const-string v4, "no subscription list was returned from the service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "CMTelephonyManager"

    const-string v4, "the subscription list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isDataConnectionEnabled()Z
    .locals 6

    .prologue
    .line 223
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_1

    .line 224
    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the network data connection is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 234
    .local v0, "dataConnectionEnabled":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionEnabled()Z

    move-result v0

    .line 235
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the network data connection is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v2    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 190
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_1

    .line 191
    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the data connection is enabled for SIM for subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 201
    .local v0, "dataConnectionActiveOnSim":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionSelectedOnSub(I)Z

    move-result v0

    .line 202
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the data connection is enabled for SIM with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v2    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSubActive(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 127
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_1

    .line 128
    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x0

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the state of the SIM with subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 138
    .local v2, "simActive":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isSubActive(I)Z

    move-result v2

    .line 139
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the SIM state with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 279
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 280
    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 284
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the network data connection for SIM with subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionSelectedOnSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionState(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 252
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 253
    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 257
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the network data connection enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultPhoneSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 306
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 307
    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the subscription used for phone calls as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultPhoneSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultSmsSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 333
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 334
    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the subscription used for SMS as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultSmsSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSubState(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 160
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    .line 161
    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the state of the SIM with subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1, p2}, Lcyanogenmod/app/ICMTelephonyManager;->setSubState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
