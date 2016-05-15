.class public Lcyanogenmod/app/CMStatusBarManager;
.super Ljava/lang/Object;
.source "CMStatusBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMStatusBarManager"

.field private static localLOGV:Z

.field private static sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

.field private static sService:Lcyanogenmod/app/ICMStatusBarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 63
    iput-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcyanogenmod/app/CMStatusBarManager;->getService()Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 68
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcyanogenmod/app/CMStatusBarManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/CMStatusBarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    .line 79
    :cond_0
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lcyanogenmod/app/ICMStatusBarManager;
    .locals 2

    .prologue
    .line 230
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 238
    :goto_0
    return-object v1

    .line 233
    :cond_0
    const-string v1, "cmstatusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 234
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 235
    invoke-static {v0}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 236
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    goto :goto_0

    .line 238
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public publishTile(ILcyanogenmod/app/CustomTile;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "customTile"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcyanogenmod/app/CMStatusBarManager;->publishTile(Ljava/lang/String;ILcyanogenmod/app/CustomTile;)V

    .line 97
    return-void
.end method

.method public publishTile(Ljava/lang/String;ILcyanogenmod/app/CustomTile;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 114
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v0, :cond_1

    .line 115
    const-string v0, "CMStatusBarManager"

    const-string v2, "not connected to CMStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 120
    .local v6, "idOut":[I
    iget-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    :try_start_0
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v7}, Lcyanogenmod/app/ICMStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V

    .line 125
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_0

    .line 126
    const-string v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "CMStatusBarManager"

    const-string v2, "warning: no cm status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public publishTileAsUser(Ljava/lang/String;ILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 148
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v0, :cond_1

    .line 149
    const-string v0, "CMStatusBarManager"

    const-string v2, "not connected to CMStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 154
    .local v6, "idOut":[I
    iget-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    :try_start_0
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v7}, Lcyanogenmod/app/ICMStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V

    .line 159
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_0

    .line 160
    const-string v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v8

    .line 163
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "CMStatusBarManager"

    const-string v2, "warning: no cm status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeTile(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/app/CMStatusBarManager;->removeTile(Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public removeTile(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 189
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v2, :cond_0

    .line 190
    const-string v2, "CMStatusBarManager"

    const-string v3, "not connected to CMStatusBarManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "CMStatusBarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Lcyanogenmod/app/ICMStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMStatusBarManager"

    const-string v3, "warning: no cm status bar service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 215
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v1, :cond_0

    .line 216
    const-string v1, "CMStatusBarManager"

    const-string v2, "not connected to CMStatusBarManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "pkg":Ljava/lang/String;
    sget-boolean v1, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": remove("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    :try_start_0
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, p1, p2, v2}, Lcyanogenmod/app/ICMStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method
