.class Lcom/android/server/am/ActivityManagerService$MainHandler$5;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 2096
    iput-object p1, p0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object p2, p0, val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 39

    .prologue
    .line 2098
    new-instance v24, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 2100
    .local v24, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "N":I
    :goto_19
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_35

    .line 2101
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 2102
    .local v4, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2100
    add-int/lit8 v23, v23, 0x1

    goto :goto_19

    .line 2104
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2105
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    .line 2106
    :try_start_47
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v19

    .line 2107
    const/16 v23, 0x0

    :goto_55
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_af

    .line 2108
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v29

    .line 2109
    .local v29, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_ac

    .line 2110
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v32

    .line 2111
    .local v32, "pss":J
    const-wide/16 v12, 0x0

    cmp-long v5, v32, v12

    if-lez v5, :cond_ac

    .line 2112
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_ac

    .line 2113
    new-instance v4, Lcom/android/server/am/ProcessMemInfo;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v7, -0x11

    const/4 v8, -0x1

    const-string v9, "native"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 2115
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v32    # "pss":J
    :cond_ac
    add-int/lit8 v23, v23, 0x1

    goto :goto_55

    .line 2121
    .end local v29    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_af
    monitor-exit v11
    :try_end_b0
    .catchall {:try_start_47 .. :try_end_b0} :catchall_e6

    .line 2123
    const-wide/16 v36, 0x0

    .line 2124
    .local v36, "totalPss":J
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_bc
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_e9

    .line 2125
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 2126
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_df

    .line 2127
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 2129
    :cond_df
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v36, v36, v10

    .line 2124
    add-int/lit8 v23, v23, 0x1

    goto :goto_bc

    .line 2121
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v36    # "totalPss":J
    :catchall_e6
    move-exception v5

    :try_start_e7
    monitor-exit v11
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v5

    .line 2131
    .restart local v36    # "totalPss":J
    :cond_e9
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$MainHandler$5$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$5$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler$5;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2143
    new-instance v35, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2144
    .local v35, "tag":Ljava/lang/StringBuilder;
    new-instance v34, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2145
    .local v34, "stack":Ljava/lang/StringBuilder;
    const-string v5, "Low on memory -- "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    const-string/jumbo v5, "total"

    const/4 v6, 0x0

    move-object/from16 v0, v35

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 2147
    const-string/jumbo v5, "total"

    const/4 v6, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 2149
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2150
    .local v28, "logBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Low on memory:\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    const/16 v22, 0x1

    .line 2153
    .local v22, "firstLine":Z
    const/high16 v27, -0x80000000

    .line 2154
    .local v27, "lastOomAdj":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_144
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_29c

    .line 2155
    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 2157
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v6, -0x11

    if-eq v5, v6, :cond_21c

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_16b

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_16b

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_21c

    .line 2161
    :cond_16b
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v0, v5, :cond_206

    .line 2162
    iget v0, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v27, v0

    .line 2163
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_180

    .line 2164
    const-string v5, " / "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    :cond_180
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_1fe

    .line 2167
    if-eqz v22, :cond_18f

    .line 2168
    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    const/16 v22, 0x0

    .line 2171
    :cond_18f
    const-string v5, "\n\t at "

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :goto_196
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_1a4

    .line 2180
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 2182
    :cond_1a4
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 2183
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_21c

    add-int/lit8 v5, v23, 0x1

    move/from16 v0, v19

    if-ge v5, v0, :cond_1ca

    move-object/from16 v0, p0

    iget-object v5, v0, val$memInfos:Ljava/util/ArrayList;

    add-int/lit8 v6, v23, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v5, v0, :cond_21c

    .line 2185
    :cond_1ca
    const-string v5, "("

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_1d3
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v5, v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_215

    .line 2187
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    iget v6, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v5, v6, :cond_1fb

    .line 2188
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2186
    :cond_1fb
    add-int/lit8 v26, v26, 0x1

    goto :goto_1d3

    .line 2173
    .end local v26    # "k":I
    :cond_1fe
    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_196

    .line 2176
    :cond_206
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_196

    .line 2193
    .restart local v26    # "k":I
    :cond_215
    const-string v5, ")"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    .end local v26    # "k":I
    :cond_21c
    const-string v5, "  "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2200
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->procState:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2202
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, v28

    invoke-static {v0, v10, v11}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 2203
    const-string v5, " kB: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    const-string v5, " ("

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2207
    const-string v5, ") "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2210
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v5, :cond_298

    .line 2211
    const-string v5, "                      "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2154
    :cond_298
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_144

    .line 2217
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_29c
    const-string v5, "           "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 2219
    const-string v5, " kB: TOTAL\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    const/16 v5, 0x9

    new-array v0, v5, [J

    move-object/from16 v25, v0

    .line 2222
    .local v25, "infos":[J
    invoke-static/range {v25 .. v25}, Landroid/os/Debug;->getMemInfo([J)V

    .line 2223
    const-string v5, "  MemInfo: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    const/4 v5, 0x5

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB slab, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    const/4 v5, 0x4

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB shmem, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    const/4 v5, 0x2

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB buffers, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    const/4 v5, 0x3

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB cached, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    const/4 v5, 0x1

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB free\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    const/16 v5, 0x8

    aget-wide v10, v25, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_346

    .line 2230
    const-string v5, "  ZRAM: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    const/16 v5, 0x8

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2232
    const-string v5, " kB RAM, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    const/4 v5, 0x6

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2234
    const-string v5, " kB swap total, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    const/4 v5, 0x7

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2236
    const-string v5, " kB swap free\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    :cond_346
    const-string v5, "ActivityManager"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2251
    .local v21, "dropBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2252
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2253
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2254
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2255
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    new-instance v20, Ljava/io/StringWriter;

    invoke-direct/range {v20 .. v20}, Ljava/io/StringWriter;-><init>()V

    .line 2261
    .local v20, "catSw":Ljava/io/StringWriter;
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v13, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2262
    :try_start_387
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    const/4 v5, 0x0

    const/16 v6, 0x100

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v5, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2263
    .local v7, "catPw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/String;

    .line 2264
    .local v8, "emptyArgs":[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 2265
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 2266
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 2267
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActiveServices;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 2269
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 2270
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 2271
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 2272
    monitor-exit v13
    :try_end_3cc
    .catchall {:try_start_387 .. :try_end_3cc} :catchall_415

    .line 2273
    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "lowmem"

    const/4 v11, 0x0

    const-string/jumbo v12, "system_server"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2279
    :try_start_3f9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 2280
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v10, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v5, v10, v30

    if-gez v5, :cond_413

    .line 2281
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 2283
    :cond_413
    monitor-exit v6
    :try_end_414
    .catchall {:try_start_3f9 .. :try_end_414} :catchall_418

    .line 2284
    return-void

    .line 2272
    .end local v7    # "catPw":Ljava/io/PrintWriter;
    .end local v8    # "emptyArgs":[Ljava/lang/String;
    .end local v30    # "now":J
    :catchall_415
    move-exception v5

    :try_start_416
    monitor-exit v13
    :try_end_417
    .catchall {:try_start_416 .. :try_end_417} :catchall_415

    throw v5

    .line 2283
    .restart local v7    # "catPw":Ljava/io/PrintWriter;
    .restart local v8    # "emptyArgs":[Ljava/lang/String;
    :catchall_418
    move-exception v5

    :try_start_419
    monitor-exit v6
    :try_end_41a
    .catchall {:try_start_419 .. :try_end_41a} :catchall_418

    throw v5
.end method
