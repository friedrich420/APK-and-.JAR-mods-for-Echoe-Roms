.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOrigHost:Ljava/lang/String;

.field private final mPort:I

.field private final mWild:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mOrigHost:Ljava/lang/String;

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mHost:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, mWild:Z

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mPort:I

    .line 672
    return-void

    .line 670
    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, mOrigHost:Ljava/lang/String;

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_16

    move v0, v1

    :cond_16
    iput-boolean v0, p0, mWild:Z

    .line 663
    iget-boolean v0, p0, mWild:Z

    if-eqz v0, :cond_24

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "host":Ljava/lang/String;
    :cond_24
    iput-object p1, p0, mHost:Ljava/lang/String;

    .line 664
    if-eqz p2, :cond_2f

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2c
    iput v0, p0, mPort:I

    .line 665
    return-void

    .line 664
    :cond_2f
    const/4 v0, -0x1

    goto :goto_2c
.end method

.method static synthetic access$000(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    .line 654
    iget-object v0, p0, mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/IntentFilter$AuthorityEntry;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    .line 654
    iget v0, p0, mPort:I

    return v0
.end method

.method static synthetic access$200(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    .line 654
    iget-boolean v0, p0, mWild:Z

    return v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 686
    iget v0, p0, mPort:I

    return v0
.end method

.method public match(Landroid/net/Uri;)I
    .registers 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x2

    .line 714
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 735
    :cond_7
    :goto_7
    return v1

    .line 720
    :cond_8
    iget-boolean v2, p0, mWild:Z

    if-eqz v2, :cond_27

    .line 721
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    :cond_27
    iget-object v2, p0, mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 729
    iget v2, p0, mPort:I

    if-ltz v2, :cond_3e

    .line 730
    iget v2, p0, mPort:I

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 733
    const/high16 v1, 0x400000

    goto :goto_7

    .line 735
    :cond_3e
    const/high16 v1, 0x300000

    goto :goto_7
.end method

.method public match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 5
    .param p1, "other"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-boolean v1, p0, mWild:Z

    iget-boolean v2, p1, mWild:Z

    if-eq v1, v2, :cond_8

    .line 700
    :cond_7
    :goto_7
    return v0

    .line 694
    :cond_8
    iget-object v1, p0, mHost:Ljava/lang/String;

    iget-object v2, p1, mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 697
    iget v1, p0, mPort:I

    iget v2, p1, mPort:I

    if-ne v1, v2, :cond_7

    .line 700
    const/4 v0, 0x1

    goto :goto_7
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 675
    iget-object v0, p0, mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    iget-boolean v0, p0, mWild:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    return-void

    .line 677
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
