.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "location"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 315
    .local v6, locationManager:Landroid/location/LocationManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 316
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v12, "weather_use_custom_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v9, 0x1

    .line 318
    .local v9, useCustomLoc:Z
    :goto_0
    const-string v12, "weather_custom_location"

    invoke-static {v8, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, customLoc:Ljava/lang/String;
    const/4 v11, 0x0

    .line 323
    .local v11, woeid:Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v9, :cond_2

    .line 325
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/android/internal/util/weather/YahooPlaceFinder;->GeoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 356
    :goto_1
    const/4 v10, 0x0

    .line 357
    .local v10, w:Lcom/android/internal/util/weather/WeatherInfo;
    if-eqz v11, :cond_0

    .line 359
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v13, v13, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    invoke-static {v13, v11}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v13

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 363
    :cond_0
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 364
    .local v7, msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->what:I

    .line 365
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void

    .line 316
    .end local v3           #customLoc:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v9           #useCustomLoc:Z
    .end local v10           #w:Lcom/android/internal/util/weather/WeatherInfo;
    .end local v11           #woeid:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 328
    .restart local v3       #customLoc:Ljava/lang/String;
    .restart local v9       #useCustomLoc:Z
    .restart local v11       #woeid:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 329
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "KeyguardStatusView"

    const-string v13, "ERROR: Could not get Location code"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 334
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 335
    .local v2, crit:Landroid/location/Criteria;
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 336
    const/4 v12, 0x1

    invoke-virtual {v6, v2, v12}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, bestProvider:Ljava/lang/String;
    const/4 v5, 0x0

    .line 338
    .local v5, loc:Landroid/location/Location;
    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {v6, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 344
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    iget-object v12, v12, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    invoke-static/range {v12 .. v16}, Lcom/android/internal/util/weather/YahooPlaceFinder;->reverseGeoCode(Landroid/content/Context;DD)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto :goto_1

    .line 341
    :cond_3
    const-string v12, "passive"

    invoke-virtual {v6, v12}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_3

    .line 348
    :catch_1
    move-exception v4

    .line 349
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v12, "KeyguardStatusView"

    const-string v13, "ERROR: Could not get Location code"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v1           #bestProvider:Ljava/lang/String;
    .end local v2           #crit:Landroid/location/Criteria;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #loc:Landroid/location/Location;
    .restart local v10       #w:Lcom/android/internal/util/weather/WeatherInfo;
    :catch_2
    move-exception v12

    goto :goto_2
.end method
