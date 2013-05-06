.class Lcom/android/server/PowerManagerService$10;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2815
    iput-object p1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2817
    iget-object v5, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 2818
    const/4 v0, 0x0

    .line 2819
    .local v0, again:Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2820
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)I

    move-result v7

    aget v2, v6, v7

    .line 2821
    .local v2, discarded:I
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)I

    move-result v8

    aput v8, v6, v7

    .line 2822
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v8

    array-length v8, v8

    rem-int/2addr v7, v8

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterIndex:I
    invoke-static {v6, v7}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;I)I

    .line 2824
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v6, v7}, Lcom/android/server/PowerManagerService;->access$7402(Lcom/android/server/PowerManagerService;I)I

    .line 2826
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 2827
    const/4 v2, 0x0

    .line 2830
    :cond_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/PowerManagerService;->access$7512(Lcom/android/server/PowerManagerService;I)I

    .line 2832
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v6, v2}, Lcom/android/server/PowerManagerService;->access$7520(Lcom/android/server/PowerManagerService;I)I

    .line 2834
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSum:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSampleCounter:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2836
    .local v1, average:I
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)F

    move-result v6

    float-to-int v6, v6

    if-eq v1, v6, :cond_1

    .line 2837
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v6, v1, v7}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;IZ)V

    .line 2839
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSample:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 2840
    iget-object v3, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightFilterEqualCounter:I
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$7702(Lcom/android/server/PowerManagerService;I)I

    .line 2841
    const/4 v0, 0x1

    .line 2857
    .end local v1           #average:I
    .end local v2           #discarded:I
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 2858
    iget-object v3, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterInterval:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2862
    :goto_1
    monitor-exit v5

    .line 2863
    return-void

    .line 2848
    .restart local v1       #average:I
    .restart local v2       #discarded:I
    :cond_3
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7708(Lcom/android/server/PowerManagerService;)I

    .line 2849
    iget-object v6, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterEqualCounter:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7700(Lcom/android/server/PowerManagerService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightFilterSamples:[I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_4

    move v0, v3

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_2

    .line 2860
    .end local v1           #average:I
    .end local v2           #discarded:I
    :cond_5
    iget-object v3, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightFilterStop()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)V

    goto :goto_1

    .line 2862
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
