.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_PAUSE_TIME_ATTR:Ljava/lang/String; = "lastPauseTime"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final PPM_INFO_TAG:Ljava/lang/String; = "ppm-info"

.field private static final PPM_TAG:Ljava/lang/String; = "ppm"

.field private static final SCORE_ATTR:Ljava/lang/String; = "score"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 99
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 104
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 107
    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 108
    const-string v2, "count"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 109
    const-string v2, "active"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 110
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 112
    :cond_34
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v3, "package"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_11

    .line 118
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "no package attribute present"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_11
    const-string v3, "class"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 126
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v3, "time"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 128
    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 129
    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_41

    .line 130
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 131
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 134
    :cond_41
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v3, :cond_4c

    .line 135
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 137
    :cond_4c
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 138
    return-void
.end method

.method private static loadPpmStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v12, 0x0

    const-string/jumbo v13, "package"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "pkg":Ljava/lang/String;
    if-nez v7, :cond_12

    .line 145
    new-instance v12, Ljava/net/ProtocolException;

    const-string v13, "no package attribute present"

    invoke-direct {v12, v13}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 148
    :cond_12
    invoke-virtual {p1, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreatePpmUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v10

    .line 149
    .local v10, "stats":Landroid/app/usage/UsageStats;
    const/4 v2, 0x0

    .line 150
    .local v2, "bridge":Ljava/lang/String;
    const/4 v9, 0x0

    .line 152
    .local v9, "read_indirect":Z
    :goto_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20

    .line 204
    :cond_1f
    :goto_1f
    return-void

    .line 155
    :cond_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_af

    .line 156
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "ppm"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_97

    .line 158
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 159
    .local v3, "cnt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    if-ge v5, v3, :cond_af

    .line 160
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "attributeValue":Ljava/lang/String;
    const-string/jumbo v12, "package"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 163
    iput-object v1, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 159
    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 164
    :cond_51
    const-string v12, "count"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 165
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Landroid/app/usage/UsageStats;->mLaunchCount:J

    goto :goto_4e

    .line 166
    :cond_64
    const-string/jumbo v12, "timeActive"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 167
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto :goto_4e

    .line 168
    :cond_78
    const-string v12, "lastPauseTime"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 169
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Landroid/app/usage/UsageStats;->mLastTimePaused:J

    goto :goto_4e

    .line 170
    :cond_8b
    const-string/jumbo v12, "score"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 171
    iput-object v1, v10, Landroid/app/usage/UsageStats;->mScoreListString:Ljava/lang/String;

    goto :goto_4e

    .line 174
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local v3    # "cnt":I
    .end local v5    # "i":I
    :cond_97
    const-string v12, "indirect"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c7

    .line 175
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v12, v10, Landroid/app/usage/UsageStats;->mIndirectScoreMap:Ljava/util/HashMap;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v9, 0x1

    .line 189
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_af
    :goto_af
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_108

    .line 190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 191
    .restart local v11    # "tagName":Ljava/lang/String;
    const-string/jumbo v12, "ppm"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f1

    .line 192
    if-eqz v7, :cond_1f

    goto/16 :goto_1f

    .line 179
    :cond_c7
    const-string/jumbo v12, "score_info"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_af

    .line 180
    if-eqz v9, :cond_af

    .line 181
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {p0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 183
    .local v6, "indirect_score":I
    iget-object v12, v10, Landroid/app/usage/UsageStats;->mIndirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 184
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    new-instance v12, Landroid/app/usage/PreferredScoreInfo;

    invoke-direct {v12, v8, v6}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 194
    .end local v4    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v6    # "indirect_score":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_f1
    const-string v12, "indirect"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 195
    const/4 v9, 0x0

    .line 196
    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 197
    :cond_fd
    const-string/jumbo v12, "score_info"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_1f

    .line 202
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_108
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_18
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v2, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 83
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "no package attribute present"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_12
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 89
    .local v1, "stats":Landroid/app/usage/UsageStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 92
    const-string/jumbo v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 93
    const-string v2, "lastEvent"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 94
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 304
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 305
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 306
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 308
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-eqz v3, :cond_19

    .line 309
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 312
    :cond_19
    const-string v3, "endTime"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 315
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 317
    .local v1, "outerDepth":I
    :cond_25
    :goto_25
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "eventCode":I
    if-eq v0, v4, :cond_7f

    if-ne v0, v6, :cond_33

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_7f

    .line 318
    :cond_33
    if-ne v0, v5, :cond_25

    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_80

    :cond_41
    :goto_41
    packed-switch v3, :pswitch_data_92

    goto :goto_25

    .line 325
    :pswitch_45
    invoke-static {p0, p1}, loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_25

    .line 323
    :sswitch_49
    const-string/jumbo v7, "package"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    const/4 v3, 0x0

    goto :goto_41

    :sswitch_54
    const-string v7, "config"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    move v3, v4

    goto :goto_41

    :sswitch_5e
    const-string v7, "event"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    move v3, v5

    goto :goto_41

    :sswitch_68
    const-string/jumbo v7, "ppm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    move v3, v6

    goto :goto_41

    .line 329
    :pswitch_73
    invoke-static {p0, p1}, loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_25

    .line 333
    :pswitch_77
    invoke-static {p0, p1}, loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_25

    .line 337
    :pswitch_7b
    invoke-static {p0, p1}, loadPpmStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_25

    .line 342
    .end local v2    # "tag":Ljava/lang/String;
    :cond_7f
    return-void

    .line 323
    :sswitch_data_80
    .sparse-switch
        -0x50c07cbe -> :sswitch_54
        -0x301acbba -> :sswitch_49
        0x1b26d -> :sswitch_68
        0x5c6729a -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_45
        :pswitch_73
        :pswitch_77
        :pswitch_7b
    .end packed-switch
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .registers 15
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 353
    const-string v6, "endTime"

    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v10, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v8, v10

    invoke-static {p0, v6, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 355
    const-string/jumbo v6, "packages"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 357
    .local v5, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v5, :cond_28

    .line 358
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v6}, writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 360
    :cond_28
    const-string/jumbo v6, "packages"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    const-string v6, "configurations"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 365
    .local v1, "configCount":I
    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v1, :cond_58

    .line 366
    iget-object v7, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v7, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 367
    .local v0, "active":Z
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-static {p0, p1, v6, v0}, writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 369
    .end local v0    # "active":Z
    :cond_58
    const-string v6, "configurations"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    const-string v6, "event-log"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-eqz v6, :cond_7d

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 373
    .local v2, "eventCount":I
    :goto_6c
    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v2, :cond_7f

    .line 374
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p0, p1, v6}, writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 372
    .end local v2    # "eventCount":I
    :cond_7d
    const/4 v2, 0x0

    goto :goto_6c

    .line 376
    .restart local v2    # "eventCount":I
    :cond_7f
    const-string v6, "event-log"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    const-string/jumbo v6, "ppm-info"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->ppmInfoStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 382
    .local v4, "ppmInfoCount":I
    const/4 v3, 0x0

    :goto_91
    if-ge v3, v4, :cond_a1

    .line 383
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->ppmInfoStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v6}, writePpmInfo(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 385
    :cond_a1
    const-string/jumbo v6, "ppm-info"

    invoke-interface {p0, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 11
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p3, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 256
    const-string v0, "config"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    const-string v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 262
    const-string/jumbo v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 263
    const-string v0, "count"

    iget v1, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 264
    if-eqz p3, :cond_27

    .line 265
    const-string v0, "active"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 269
    :cond_27
    iget-object v0, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 271
    const-string v0, "config"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 10
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 276
    const-string v0, "event"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    const-string/jumbo v0, "time"

    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 281
    const-string/jumbo v0, "package"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 283
    const-string v0, "class"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_24
    const-string/jumbo v0, "type"

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 287
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3a

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_3a

    .line 289
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 292
    :cond_3a
    const-string v0, "event"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    return-void
.end method

.method private static writePpmInfo(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 14
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 225
    const-string/jumbo v7, "ppm"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string/jumbo v7, "package"

    iget-object v8, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v7, "count"

    iget-wide v8, p2, Landroid/app/usage/UsageStats;->mLaunchCount:J

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 229
    const-string/jumbo v7, "timeActive"

    iget-wide v8, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 230
    const-string v7, "lastPauseTime"

    iget-wide v8, p2, Landroid/app/usage/UsageStats;->mLastTimePaused:J

    invoke-static {p0, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 231
    const-string/jumbo v7, "score"

    iget-object v8, p2, Landroid/app/usage/UsageStats;->mScoreListString:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v7, p2, Landroid/app/usage/UsageStats;->mIndirectScoreMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 235
    .local v4, "indirectScoreSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    .local v5, "pkgName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 238
    .local v1, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    const-string v7, "indirect"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    const-string v7, "name"

    invoke-interface {p0, v10, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/PreferredScoreInfo;

    .line 243
    .local v6, "psi":Landroid/app/usage/PreferredScoreInfo;
    const-string/jumbo v7, "score_info"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string/jumbo v7, "pkg"

    iget-object v8, v6, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    invoke-interface {p0, v10, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string/jumbo v7, "score"

    iget v8, v6, Landroid/app/usage/PreferredScoreInfo;->score:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v10, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const-string/jumbo v7, "score_info"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_61

    .line 248
    .end local v6    # "psi":Landroid/app/usage/PreferredScoreInfo;
    :cond_8e
    const-string v7, "indirect"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    .line 250
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    .end local v1    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_94
    const-string/jumbo v7, "ppm"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    return-void
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 10
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 209
    const-string/jumbo v0, "package"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    const-string v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 215
    const-string/jumbo v0, "package"

    iget-object v1, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 217
    const-string v0, "lastEvent"

    iget v1, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 219
    const-string/jumbo v0, "package"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    return-void
.end method
