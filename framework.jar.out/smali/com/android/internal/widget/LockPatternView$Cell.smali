.class public Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize()V

    .line 150
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "row"
    .parameter "column"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 158
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 159
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 160
    return-void
.end method

.method private static checkRange(II)V
    .locals 3
    .parameter "row"
    .parameter "column"

    .prologue
    .line 189
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    if-ltz p1, :cond_2

    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    return-void
.end method

.method public static declared-synchronized of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 175
    const-class v1, Lcom/android/internal/widget/LockPatternView$Cell;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 176
    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateSize()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v2

    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    sput-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternView;->access$000()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    sget-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v3, v0, v1}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v3, v2, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1           #j:I
    :cond_1
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
