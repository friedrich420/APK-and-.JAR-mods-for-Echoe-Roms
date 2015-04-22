.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public dateTaken:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:J

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public height:J

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeTypeEnum:I

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    const-string v0, ""

    iput-object v0, p0, title:Ljava/lang/String;

    .line 1709
    const-string v0, ""

    iput-object v0, p0, album:Ljava/lang/String;

    .line 1710
    const-string v0, ""

    iput-object v0, p0, filename:Ljava/lang/String;

    .line 1711
    const-string v0, ""

    iput-object v0, p0, id:Ljava/lang/String;

    .line 1712
    iput-wide v2, p0, duration:J

    .line 1713
    const-string v0, ""

    iput-object v0, p0, size:Ljava/lang/String;

    .line 1714
    const/4 v0, 0x3

    iput v0, p0, mimeTypeEnum:I

    .line 1715
    const-string v0, ""

    iput-object v0, p0, artist:Ljava/lang/String;

    .line 1716
    const-string v0, ""

    iput-object v0, p0, composer:Ljava/lang/String;

    .line 1717
    const/4 v0, 0x0

    iput v0, p0, year:I

    .line 1718
    const-string v0, ""

    iput-object v0, p0, description:Ljava/lang/String;

    .line 1719
    const-string v0, ""

    iput-object v0, p0, language:Ljava/lang/String;

    .line 1720
    const-string v0, ""

    iput-object v0, p0, longitude:Ljava/lang/String;

    .line 1721
    const-string v0, ""

    iput-object v0, p0, latitude:Ljava/lang/String;

    .line 1722
    const-string v0, ""

    iput-object v0, p0, creationDate:Ljava/lang/String;

    .line 1723
    const-string v0, ""

    iput-object v0, p0, path:Ljava/lang/String;

    .line 1724
    const-string v0, ""

    iput-object v0, p0, modificationDate:Ljava/lang/String;

    .line 1725
    const-string v0, ""

    iput-object v0, p0, genreName:Ljava/lang/String;

    .line 1726
    iput-wide v2, p0, width:J

    .line 1727
    iput-wide v2, p0, height:J

    .line 1728
    const-string v0, ""

    iput-object v0, p0, dateTaken:Ljava/lang/String;

    .line 1732
    const-string v0, "MTPJNIInterface"

    const-string v1, "Inside MediaObject Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .registers 29
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "composer"    # Ljava/lang/String;
    .param p5, "creationDate"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "duration"    # J
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "language"    # Ljava/lang/String;
    .param p11, "latitude"    # Ljava/lang/String;
    .param p12, "longitude"    # Ljava/lang/String;
    .param p13, "mimeTypeEnum"    # I
    .param p14, "modificationDate"    # Ljava/lang/String;
    .param p15, "path"    # Ljava/lang/String;
    .param p16, "size"    # Ljava/lang/String;
    .param p17, "title"    # Ljava/lang/String;
    .param p18, "year"    # I
    .param p19, "genreName"    # Ljava/lang/String;
    .param p20, "width"    # J
    .param p22, "height"    # J
    .param p24, "dateTaken"    # Ljava/lang/String;

    .prologue
    .line 1737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    const-string v2, ""

    iput-object v2, p0, title:Ljava/lang/String;

    .line 1709
    const-string v2, ""

    iput-object v2, p0, album:Ljava/lang/String;

    .line 1710
    const-string v2, ""

    iput-object v2, p0, filename:Ljava/lang/String;

    .line 1711
    const-string v2, ""

    iput-object v2, p0, id:Ljava/lang/String;

    .line 1712
    const-wide/16 v2, 0x0

    iput-wide v2, p0, duration:J

    .line 1713
    const-string v2, ""

    iput-object v2, p0, size:Ljava/lang/String;

    .line 1714
    const/4 v2, 0x3

    iput v2, p0, mimeTypeEnum:I

    .line 1715
    const-string v2, ""

    iput-object v2, p0, artist:Ljava/lang/String;

    .line 1716
    const-string v2, ""

    iput-object v2, p0, composer:Ljava/lang/String;

    .line 1717
    const/4 v2, 0x0

    iput v2, p0, year:I

    .line 1718
    const-string v2, ""

    iput-object v2, p0, description:Ljava/lang/String;

    .line 1719
    const-string v2, ""

    iput-object v2, p0, language:Ljava/lang/String;

    .line 1720
    const-string v2, ""

    iput-object v2, p0, longitude:Ljava/lang/String;

    .line 1721
    const-string v2, ""

    iput-object v2, p0, latitude:Ljava/lang/String;

    .line 1722
    const-string v2, ""

    iput-object v2, p0, creationDate:Ljava/lang/String;

    .line 1723
    const-string v2, ""

    iput-object v2, p0, path:Ljava/lang/String;

    .line 1724
    const-string v2, ""

    iput-object v2, p0, modificationDate:Ljava/lang/String;

    .line 1725
    const-string v2, ""

    iput-object v2, p0, genreName:Ljava/lang/String;

    .line 1726
    const-wide/16 v2, 0x0

    iput-wide v2, p0, width:J

    .line 1727
    const-wide/16 v2, 0x0

    iput-wide v2, p0, height:J

    .line 1728
    const-string v2, ""

    iput-object v2, p0, dateTaken:Ljava/lang/String;

    .line 1738
    iput-object p1, p0, filename:Ljava/lang/String;

    .line 1739
    iput-object p2, p0, album:Ljava/lang/String;

    .line 1740
    iput-object p3, p0, artist:Ljava/lang/String;

    .line 1741
    iput-object p4, p0, composer:Ljava/lang/String;

    .line 1742
    iput-object p5, p0, creationDate:Ljava/lang/String;

    .line 1743
    iput-object p6, p0, description:Ljava/lang/String;

    .line 1744
    iput-wide p7, p0, duration:J

    .line 1746
    iput-object p9, p0, id:Ljava/lang/String;

    .line 1748
    iput-object p10, p0, language:Ljava/lang/String;

    .line 1750
    iput-object p11, p0, latitude:Ljava/lang/String;

    .line 1752
    move-object/from16 v0, p12

    iput-object v0, p0, longitude:Ljava/lang/String;

    .line 1754
    move/from16 v0, p13

    iput v0, p0, mimeTypeEnum:I

    .line 1756
    move-object/from16 v0, p14

    iput-object v0, p0, modificationDate:Ljava/lang/String;

    .line 1758
    move-object/from16 v0, p15

    iput-object v0, p0, path:Ljava/lang/String;

    .line 1760
    move-object/from16 v0, p16

    iput-object v0, p0, size:Ljava/lang/String;

    .line 1762
    move-object/from16 v0, p17

    iput-object v0, p0, title:Ljava/lang/String;

    .line 1764
    move/from16 v0, p18

    iput v0, p0, year:I

    .line 1766
    move-object/from16 v0, p19

    iput-object v0, p0, genreName:Ljava/lang/String;

    .line 1768
    move-wide/from16 v0, p20

    iput-wide v0, p0, width:J

    .line 1770
    move-wide/from16 v0, p22

    iput-wide v0, p0, height:J

    .line 1772
    move-object/from16 v0, p24

    iput-object v0, p0, dateTaken:Ljava/lang/String;

    .line 1775
    return-void
.end method
