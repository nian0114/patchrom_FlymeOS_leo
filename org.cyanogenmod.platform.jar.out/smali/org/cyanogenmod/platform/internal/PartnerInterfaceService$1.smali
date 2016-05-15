.class Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;
.super Lcyanogenmod/app/IPartnerInterface$Stub;
.source "PartnerInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-direct {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentHotwordPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceCaptureHotwordPermission()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$700(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 165
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 166
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->getHotwordPackageNameInternal()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 168
    return-object v0
.end method

.method public reboot()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceShutdownPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$300(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 143
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x1

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->shutdownInternal(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$400(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 145
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 146
    return-void
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifyNetworkSettingsPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$000(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 104
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setAirplaneModeEnabledInternal(Z)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$100(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 106
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 107
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 111
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifyNetworkSettingsPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$000(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 117
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 118
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setMobileDataEnabledInternal(Z)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$200(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 119
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 120
    return-void
.end method

.method public setZenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceModifySoundSettingsPermission()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$500(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 156
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 157
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->setZenModeInternal(I)Z
    invoke-static {v1, p1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$600(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;I)Z

    move-result v0

    .line 158
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 159
    return v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->enforceShutdownPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$300(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;)V

    .line 130
    invoke-static {}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 131
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->this$0:Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;

    const/4 v3, 0x0

    # invokes: Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->shutdownInternal(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;->access$400(Lorg/cyanogenmod/platform/internal/PartnerInterfaceService;Z)V

    .line 132
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/PartnerInterfaceService$1;->restoreCallingIdentity(J)V

    .line 133
    return-void
.end method
