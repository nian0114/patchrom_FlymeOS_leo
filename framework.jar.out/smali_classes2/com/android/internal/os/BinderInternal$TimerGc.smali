.class public Lcom/android/internal/os/BinderInternal$TimerGc;
.super Ljava/lang/Object;
.source "BinderInternal.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerGc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private waitTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BinderInternal$TimerGc;->waitTime:J

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/os/BinderInternal$TimerGc;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BinderInternal$TimerGc;->waitTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Binder"

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/BinderInternal;->postponedGcCount:I

    const/4 v0, 0x0

    return-object v0
.end method
