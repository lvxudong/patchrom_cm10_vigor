.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1976
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1977
    return-void
.end method


# virtual methods
.method checkGestures()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1998
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_stylus_gestures"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mEnableGestures:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1102(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    .line 2001
    return-void

    :cond_0
    move v0, v1

    .line 1998
    goto :goto_0
.end method

.method observe()V
    .locals 3

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1981
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "enable_stylus_gestures"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1984
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->checkGestures()V

    .line 1985
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->checkGestures()V

    .line 1995
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 1988
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SettingsObserver;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1989
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1990
    return-void
.end method
