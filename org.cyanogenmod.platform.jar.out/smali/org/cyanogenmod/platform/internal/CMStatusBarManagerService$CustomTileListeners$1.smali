.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;
.super Ljava/lang/Object;
.source "CMStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPostedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

.field final synthetic val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

.field final synthetic val$oldSbcClone:Lcyanogenmod/app/StatusBarPanelCustomTile;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->val$oldSbcClone:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->this$1:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->val$info:Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;->val$oldSbcClone:Lcyanogenmod/app/StatusBarPanelCustomTile;

    # invokes: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemoved(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->access$1000(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 604
    return-void
.end method
