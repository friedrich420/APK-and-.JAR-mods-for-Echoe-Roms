.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
.super Ljava/lang/Object;
.source "EnterprisePremiumVpnPolicyServiceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnState"
.end annotation


# static fields
.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I


# instance fields
.field private mCid:I

.field private mInterface:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mState:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "cid"    # I

    .prologue
    .line 3679
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3680
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "cid"    # I

    .prologue
    .line 3676
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3677
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 8
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "cid"    # I
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "state"    # I

    .prologue
    .line 3681
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3682
    iput-object p2, p0, mProfileName:Ljava/lang/String;

    .line 3683
    iput-object p3, p0, mPackageName:Ljava/lang/String;

    .line 3684
    iput-object p6, p0, mInterface:Ljava/lang/String;

    .line 3685
    iput p4, p0, mUid:I

    .line 3686
    iput p5, p0, mCid:I

    .line 3687
    iput p7, p0, mState:I

    .line 3688
    return-void
.end method


# virtual methods
.method public getCid()I
    .registers 2

    .prologue
    .line 3714
    iget v0, p0, mCid:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3702
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3696
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3690
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 3720
    iget v0, p0, mState:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 3708
    iget v0, p0, mUid:I

    return v0
.end method

.method public setCid(I)V
    .registers 2
    .param p1, "cid"    # I

    .prologue
    .line 3717
    iput p1, p0, mCid:I

    .line 3718
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3705
    iput-object p1, p0, mInterface:Ljava/lang/String;

    .line 3706
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3699
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 3700
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3693
    iput-object p1, p0, mProfileName:Ljava/lang/String;

    .line 3694
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3723
    iput p1, p0, mState:I

    .line 3724
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 3711
    iput p1, p0, mUid:I

    .line 3712
    return-void
.end method
