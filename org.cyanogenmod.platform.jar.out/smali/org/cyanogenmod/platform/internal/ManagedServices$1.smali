.class Lorg/cyanogenmod/platform/internal/ManagedServices$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mService:Landroid/os/IInterface;

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

.field final synthetic val$servicesBindingTag:Ljava/lang/String;

.field final synthetic val$targetSdkVersion:I

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ManagedServices;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    iput p3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$userid:I

    iput p4, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$targetSdkVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 378
    const/4 v7, 0x0

    .line 379
    .local v7, "added":Z
    const/4 v8, 0x0

    .line 380
    .local v8, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v9, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    # getter for: Lorg/cyanogenmod/platform/internal/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices;->access$200(Lorg/cyanogenmod/platform/internal/ManagedServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-virtual {v0, p2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->mService:Landroid/os/IInterface;

    .line 384
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->mService:Landroid/os/IInterface;

    iget v3, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$userid:I

    const/4 v4, 0x0

    iget v6, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->val$targetSdkVersion:I

    move-object v2, p1

    move-object v5, p0

    # invokes: Lorg/cyanogenmod/platform/internal/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    invoke-static/range {v0 .. v6}, Lorg/cyanogenmod/platform/internal/ManagedServices;->access$300(Lorg/cyanogenmod/platform/internal/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    move-result-object v8

    .line 386
    const/4 v0, 0x0

    invoke-interface {p2, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 387
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 391
    :goto_0
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    if-eqz v7, :cond_0

    .line 393
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    invoke-virtual {v0, v8}, Lorg/cyanogenmod/platform/internal/ManagedServices;->onServiceAdded(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V

    .line 395
    :cond_0
    return-void

    .line 391
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ManagedServices$1;->this$0:Lorg/cyanogenmod/platform/internal/ManagedServices;

    # invokes: Lorg/cyanogenmod/platform/internal/ManagedServices;->getCaption()Ljava/lang/String;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ManagedServices;->access$400(Lorg/cyanogenmod/platform/internal/ManagedServices;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method
