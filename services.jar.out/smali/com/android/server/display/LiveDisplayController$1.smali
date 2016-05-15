.class Lcom/android/server/display/LiveDisplayController$1;
.super Ljava/lang/Object;
.source "LiveDisplayController.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$1;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$1;->this$0:Lcom/android/server/display/LiveDisplayController;

    # setter for: Lcom/android/server/display/LiveDisplayController;->mLowPerformance:Z
    invoke-static {v0, p1}, Lcom/android/server/display/LiveDisplayController;->access$002(Lcom/android/server/display/LiveDisplayController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$1;->this$0:Lcom/android/server/display/LiveDisplayController;

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$1;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F
    invoke-static {v1}, Lcom/android/server/display/LiveDisplayController;->access$100(Lcom/android/server/display/LiveDisplayController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    return-void
.end method
