.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;
.super Ljava/lang/Object;
.source "ProfileManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->bindKeyguard()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 97
    return-void
.end method
