.class final Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CpuTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/32 v8, 0xfffffff

    add-long/2addr v6, v8

    sub-long v0, v6, v4

    .local v0, "nextCpuDelay":J
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v8, 0x1b7740

    add-long/2addr v6, v8

    sub-long v2, v6, v4

    .local v2, "nextWriteDelay":J
    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    move-wide v0, v2

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "nextCpuDelay":J
    .end local v2    # "nextWriteDelay":J
    .end local v4    # "now":J
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->schedule()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method schedule()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateNow()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$CpuTrackerHandler;->sendEmptyMessage(I)Z

    return-void
.end method
