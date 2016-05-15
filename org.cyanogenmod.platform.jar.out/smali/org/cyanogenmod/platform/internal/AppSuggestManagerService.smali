.class public Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;
.super Lcom/android/server/SystemService;
.source "AppSuggestManagerService.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "org.cyanogenmod.app.suggest"

.field public static final DEBUG:Z

.field public static final NAME:Ljava/lang/String; = "appsuggest"

.field private static final TAG:Ljava/lang/String; = "AppSgstMgrService"


# instance fields
.field private mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "AppSgstMgrService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AppSgstMgrService"

    const-string v2, "org.cyanogenmod.app.suggest"

    const/high16 v3, 0x3f040000    # 0.515625f

    const/high16 v4, 0x3f050000    # 0.51953125f

    const/high16 v5, 0x3f060000    # 0.5234375f

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    .line 68
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "AppSgstMgrService"

    const-string v1, "no app suggest provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    const-string v0, "cmappsuggest"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    return-void

    .line 71
    :cond_0
    const-string v0, "AppSgstMgrService"

    const-string v1, "Bound to to suggest provider"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
