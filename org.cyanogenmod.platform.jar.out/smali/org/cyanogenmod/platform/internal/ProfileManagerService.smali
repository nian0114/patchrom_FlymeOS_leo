.class public Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.super Lcom/android/server/SystemService;
.source "ProfileManagerService.java"


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final LOCAL_LOGV:Z = false

.field static final PROFILE_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "CMProfileService"

.field private static final mWildcardUUID:Ljava/util/UUID;


# instance fields
.field private mActiveProfile:Lcyanogenmod/app/Profile;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBindKeyguard:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field private mTriggerHelper:Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

.field private mWildcardGroup:Landroid/app/NotificationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    .line 83
    const-string v0, "a126d48a-aaef-47c4-baed-7f0e44aeffe5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBindKeyguard:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 117
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mService:Landroid/os/IBinder;

    .line 132
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    .line 134
    const-string v0, "profile"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->bindKeyguard()V

    return-void
.end method

.method static synthetic access$1000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addProfileInternal(Lcyanogenmod/app/Profile;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileInternal(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    return p1
.end method

.method static synthetic access$1376(Lorg/cyanogenmod/platform/internal/ProfileManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/app/NotificationGroup;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Landroid/app/NotificationGroup;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBindKeyguard:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    return-void
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    return-void
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V

    return-void
.end method

.method static synthetic access$700(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    return-object v0
.end method

.method private addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 665
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 668
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/app/Profile;

    .line 669
    .local v1, "profile":Lcyanogenmod/app/Profile;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 672
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcyanogenmod/app/Profile;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 673
    return-void
.end method

.method private addProfileInternal(Lcyanogenmod/app/Profile;)V
    .locals 6
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    const/4 v5, 0x1

    .line 423
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 424
    .local v0, "group":Landroid/app/NotificationGroup;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 426
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-direct {p0, p1, v2, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V

    .line 427
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iput-boolean v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 430
    return-void
.end method

.method private bindKeyguard()V
    .locals 5

    .prologue
    .line 155
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const-string v1, "CMProfileService"

    const-string v2, "error binding to keyguard service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private enforceChangePermissions()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_PROFILES"

    const-string v2, "You do not have permissions to change the Profile Manager."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private ensureGroupInProfile(Lcyanogenmod/app/Profile;Landroid/app/NotificationGroup;Z)V
    .locals 6
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .param p2, "group"    # Landroid/app/NotificationGroup;
    .param p3, "defaultGroup"    # Z

    .prologue
    .line 434
    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getProfileGroups()[Lcyanogenmod/app/ProfileGroup;

    move-result-object v0

    .local v0, "arr$":[Lcyanogenmod/app/ProfileGroup;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 441
    .local v3, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v3, p2, p3}, Lcyanogenmod/app/ProfileGroup;->matches(Landroid/app/NotificationGroup;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    .end local v3    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_2
    new-instance v4, Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {p1, v4}, Lcyanogenmod/app/Profile;->addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V

    goto :goto_0
.end method

.method private getProfileInternal(Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 7
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 452
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile;

    .line 464
    :goto_0
    return-object v6

    .line 456
    :cond_0
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcyanogenmod/app/Profile;

    .line 457
    .local v4, "p":Lcyanogenmod/app/Profile;
    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getSecondaryUuids()[Ljava/util/UUID;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/UUID;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 458
    .local v5, "uuid":Ljava/util/UUID;
    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 459
    goto :goto_0

    .line 457
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "arr$":[Ljava/util/UUID;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Lcyanogenmod/app/Profile;
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getXmlString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "<profiles>\n<active>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v4, "</active>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile;

    .line 478
    .local v3, "p":Lcyanogenmod/app/Profile;
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcyanogenmod/app/Profile;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_0

    .line 480
    .end local v3    # "p":Lcyanogenmod/app/Profile;
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    .line 481
    .local v1, "g":Landroid/app/NotificationGroup;
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v4}, Landroid/app/NotificationGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 483
    .end local v1    # "g":Landroid/app/NotificationGroup;
    :cond_1
    const-string v4, "</profiles>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initialiseStructure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x3f030000    # 0.51171875f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 593
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 595
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 599
    return-void

    .line 597
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize(Z)V

    .line 174
    return-void
.end method

.method private initialize(Z)V
    .locals 6
    .param p1, "skipFile"    # Z

    .prologue
    .line 177
    new-instance v3, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5, p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mTriggerHelper:Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;

    .line 178
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    .line 181
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 183
    move v2, p1

    .line 185
    .local v2, "init":Z
    if-nez p1, :cond_0

    .line 187
    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadFromFile()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 197
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialiseStructure()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 202
    :cond_1
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x1

    .line 192
    goto :goto_0

    .line 190
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 199
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v3, "CMProfileService"

    const-string v4, "Error loading xml from resource: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadFromFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 537
    .local v2, "xppf":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 538
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileReader;

    sget-object v3, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 539
    .local v0, "fr":Ljava/io/FileReader;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 540
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 541
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 542
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 543
    return-void
.end method

.method private loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 11
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 547
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 548
    .local v2, "event":I
    const/4 v0, 0x0

    .line 549
    .local v0, "active":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const-string v6, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 550
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "name":Ljava/lang/String;
    const-string v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v6, "CMProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 555
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string v6, "profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 556
    invoke-static {p1, p2}, Lcyanogenmod/app/Profile;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .line 557
    .local v5, "prof":Lcyanogenmod/app/Profile;
    invoke-direct {p0, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addProfileInternal(Lcyanogenmod/app/Profile;)V

    .line 559
    if-nez v0, :cond_1

    .line 560
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 562
    .end local v5    # "prof":Lcyanogenmod/app/Profile;
    :cond_3
    const-string v6, "notificationGroup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    invoke-static {p1, p2}, Landroid/app/NotificationGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 564
    .local v4, "ng":Landroid/app/NotificationGroup;
    invoke-direct {p0, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    goto :goto_1

    .line 566
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "ng":Landroid/app/NotificationGroup;
    :cond_4
    if-ne v2, v10, :cond_1

    .line 567
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Premature end of file while reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 575
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_2
    return-void

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 578
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-direct {p0, v6, v9}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z

    .line 585
    :goto_3
    iput-boolean v10, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    goto :goto_2

    .line 582
    :cond_6
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile;

    invoke-virtual {p0, v6, v9}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    goto :goto_3
.end method

.method private declared-synchronized persistIfDirty()V
    .locals 8

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 489
    .local v0, "dirty":Z
    if-nez v0, :cond_1

    .line 490
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/Profile;

    .line 491
    .local v5, "profile":Lcyanogenmod/app/Profile;
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 492
    const/4 v0, 0x1

    .line 497
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Lcyanogenmod/app/Profile;
    :cond_1
    if-nez v0, :cond_3

    .line 498
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationGroup;

    .line 499
    .local v3, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->isDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 500
    const/4 v0, 0x1

    .line 505
    .end local v3    # "group":Landroid/app/NotificationGroup;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 507
    :try_start_1
    const-string v6, "CMProfileService"

    const-string v7, "Saving profile data..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v2, Ljava/io/FileWriter;

    sget-object v6, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 509
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 511
    const-string v6, "CMProfileService"

    const-string v7, "Save completed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 513
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 488
    .end local v0    # "dirty":Z
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private setActiveProfileInternal(Ljava/util/UUID;Z)Z
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;
    .param p2, "doInit"    # Z

    .prologue
    .line 602
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const-string v0, "CMProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set active profile to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    invoke-virtual {p0, v0, p2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 610
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getActiveProfileInternal()Lcyanogenmod/app/Profile;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    return-object v0
.end method

.method getProfileList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 167
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->bindKeyguard()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const v4, 0x3f05002c

    .line 139
    new-instance v1, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 141
    new-instance v1, Landroid/app/NotificationGroup;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 146
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V
    .locals 5
    .param p1, "newActiveProfile"    # Lcyanogenmod/app/Profile;
    .param p2, "doInit"    # Z

    .prologue
    .line 626
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V

    .line 628
    const-string v2, "CMProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set active profile to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    .line 632
    .local v1, "lastProfile":Lcyanogenmod/app/Profile;
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z

    .line 635
    if-eqz p2, :cond_1

    .line 638
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    invoke-virtual {v2, v3, v4}, Lcyanogenmod/app/Profile;->doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cyanogenmod.platform.intent.action.PROFILE_SELECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "name"

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v2, "uuid"

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v2, "lastName"

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v2, "uuid"

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 652
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 662
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cyanogenmod.platform.intent.action.PROFILE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v0    # "broadcast":Landroid/content/Intent;
    const-string v2, "name"

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v2, "uuid"

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method settingsRestored()V
    .locals 3

    .prologue
    .line 528
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize()V

    .line 529
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/app/Profile;

    .line 530
    .local v1, "p":Lcyanogenmod/app/Profile;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->validateRingtones(Landroid/content/Context;)V

    goto :goto_0

    .line 532
    .end local v1    # "p":Lcyanogenmod/app/Profile;
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V

    .line 533
    return-void
.end method
