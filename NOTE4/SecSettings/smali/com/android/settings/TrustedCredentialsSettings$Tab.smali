.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0a0d46

    const v5, 0x7f100522

    const v6, 0x7f100523

    const v7, 0x7f100524

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 102
    new-instance v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f0a0d47

    const v11, 0x7f100526

    const v12, 0x7f100527

    const v13, 0x7f100528

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "list"    # I
    .param p8, "checkbox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 117
    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 118
    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    .line 119
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 120
    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    .line 121
    iput-boolean p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 122
    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings/TrustedCredentialsSettings$Tab;ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 133
    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$8;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    :pswitch_1
    return v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$8;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 154
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$8;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :pswitch_0
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const v0, 0x7f0a0d4b

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    const v0, 0x7f0a0d4c

    goto :goto_0

    .line 161
    :pswitch_1
    const v0, 0x7f0a0d4d

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 142
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$8;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :pswitch_0
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const v0, 0x7f0a0d49

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    const v0, 0x7f0a0d48

    goto :goto_0

    .line 149
    :pswitch_1
    const v0, 0x7f0a0d4a

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 166
    if-eqz p1, :cond_2

    .line 167
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 168
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 172
    :goto_1
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 177
    :goto_2
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_1
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    # getter for: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_2
    # getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
