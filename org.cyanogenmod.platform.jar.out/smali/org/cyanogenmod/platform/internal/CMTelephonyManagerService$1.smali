.class Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;
.super Lcyanogenmod/app/ICMTelephonyManager$Stub;
.source "CMTelephonyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubInformation()Ljava/util/List;
    .locals 1
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
    .line 54
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 55
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->getActiveSubscriptionInfoList()Ljava/util/List;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$100(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDataConnectionEnabled()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 119
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionEnabled()Z
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$600(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 105
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionSelectedOnSub(I)Z
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$500(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 71
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isSubActive(I)Z
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$200(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 144
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionSelectedOnSub(I)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$800(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    .line 145
    return-void
.end method

.method public setDataConnectionState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 130
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionState(Z)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$700(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;Z)V

    .line 131
    return-void
.end method

.method public setDefaultPhoneSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 159
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultPhoneSub(I)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$900(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    .line 160
    return-void
.end method

.method public setDefaultSmsSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 174
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultSmsSub(I)V
    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$1000(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    .line 175
    return-void
.end method

.method public setSubState(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    .line 87
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setSubState(IZ)V
    invoke-static {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->access$400(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;IZ)V

    .line 88
    return-void
.end method
