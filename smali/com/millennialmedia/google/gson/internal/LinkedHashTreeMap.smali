.class public final Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    .line 47
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    sget-object v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 58
    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 59
    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 85
    if-eqz p1, :cond_0

    .end local p1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_0
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 91
    return-void

    .line 85
    .restart local p1       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_0
    sget-object p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 2

    .prologue
    .line 628
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 630
    return-void
.end method

.method static doubleCapacity([Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, oldTable:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    array-length v7, p0

    .line 642
    .local v7, oldCapacity:I
    mul-int/lit8 v12, v7, 0x2

    new-array v5, v12, [Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 643
    .local v5, newTable:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 644
    .local v1, iterator:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    new-instance v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 645
    .local v2, leftBuilder:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    new-instance v8, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v8}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 648
    .local v8, rightBuilder:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_7

    .line 649
    aget-object v11, p0, v0

    .line 650
    .local v11, root:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v11, :cond_0

    .line 648
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {v1, v11}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 656
    const/4 v4, 0x0

    .line 657
    .local v4, leftSize:I
    const/4 v10, 0x0

    .line 658
    .local v10, rightSize:I
    :goto_2
    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    .local v6, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2

    .line 659
    iget v12, v6, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v12, v7

    if-nez v12, :cond_1

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 662
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 667
    :cond_2
    const/4 v3, 0x0

    .line 668
    .local v3, leftRoot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .line 669
    .local v9, rightRoot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-lez v4, :cond_5

    if-lez v10, :cond_5

    .line 670
    invoke-virtual {v2, v4}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 671
    invoke-virtual {v8, v10}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 672
    invoke-virtual {v1, v11}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 673
    :goto_3
    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 674
    iget v12, v6, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v12, v7

    if-nez v12, :cond_3

    .line 675
    invoke-virtual {v2, v6}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 677
    :cond_3
    invoke-virtual {v8, v6}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 680
    :cond_4
    invoke-virtual {v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v3

    .line 681
    invoke-virtual {v8}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v9

    .line 689
    :goto_4
    aput-object v3, v5, v0

    .line 690
    add-int v12, v0, v7

    aput-object v9, v5, v12

    goto :goto_1

    .line 682
    :cond_5
    if-lez v4, :cond_6

    .line 683
    move-object v3, v11

    goto :goto_4

    .line 685
    :cond_6
    move-object v9, v11

    goto :goto_4

    .line 692
    .end local v3           #leftRoot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4           #leftSize:I
    .end local v6           #node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v9           #rightRoot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v10           #rightSize:I
    .end local v11           #root:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_7
    return-object v5
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 260
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebalance(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 18
    .parameter
    .parameter "insert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, unbalanced:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object/from16 v9, p1

    .local v9, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_1

    .line 385
    iget-object v2, v9, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 386
    .local v2, left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v10, v9, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 387
    .local v10, right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 388
    .local v4, leftHeight:I
    :goto_1
    if-eqz v10, :cond_3

    iget v12, v10, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 390
    .local v12, rightHeight:I
    :goto_2
    sub-int v1, v4, v12

    .line 391
    .local v1, delta:I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_8

    .line 392
    iget-object v13, v10, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 393
    .local v13, rightLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v15, v10, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 394
    .local v15, rightRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v15, :cond_4

    iget v0, v15, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v16, v0

    .line 396
    .local v16, rightRightHeight:I
    :goto_3
    if-eqz v13, :cond_5

    iget v14, v13, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 398
    .local v14, rightLeftHeight:I
    :goto_4
    sub-int v11, v14, v16

    .line 399
    .local v11, rightDelta:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    if-nez v11, :cond_6

    if-nez p2, :cond_6

    .line 400
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 406
    :goto_5
    if-eqz p2, :cond_a

    .line 442
    .end local v1           #delta:I
    .end local v2           #left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4           #leftHeight:I
    .end local v10           #right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v11           #rightDelta:I
    .end local v12           #rightHeight:I
    .end local v13           #rightLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v14           #rightLeftHeight:I
    .end local v15           #rightRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v16           #rightRightHeight:I
    :cond_1
    :goto_6
    return-void

    .line 387
    .restart local v2       #left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v10       #right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 388
    .restart local v4       #leftHeight:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 394
    .restart local v1       #delta:I
    .restart local v12       #rightHeight:I
    .restart local v13       #rightLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v15       #rightRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 396
    .restart local v16       #rightRightHeight:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 402
    .restart local v11       #rightDelta:I
    .restart local v14       #rightLeftHeight:I
    :cond_6
    sget-boolean v17, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 403
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 404
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5

    .line 410
    .end local v11           #rightDelta:I
    .end local v13           #rightLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v14           #rightLeftHeight:I
    .end local v15           #rightRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v16           #rightRightHeight:I
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_f

    .line 411
    iget-object v5, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 412
    .local v5, leftLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v7, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 413
    .local v7, leftRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v7, :cond_b

    iget v8, v7, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 414
    .local v8, leftRightHeight:I
    :goto_7
    if-eqz v5, :cond_c

    iget v6, v5, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 416
    .local v6, leftLeftHeight:I
    :goto_8
    sub-int v3, v6, v8

    .line 417
    .local v3, leftDelta:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9

    if-nez v3, :cond_d

    if-nez p2, :cond_d

    .line 418
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 424
    :goto_9
    if-nez p2, :cond_1

    .line 384
    .end local v3           #leftDelta:I
    .end local v5           #leftLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v6           #leftLeftHeight:I
    .end local v7           #leftRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8           #leftRightHeight:I
    :cond_a
    iget-object v9, v9, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto/16 :goto_0

    .line 413
    .restart local v5       #leftLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v7       #leftRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 414
    .restart local v8       #leftRightHeight:I
    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    .line 420
    .restart local v3       #leftDelta:I
    .restart local v6       #leftLeftHeight:I
    :cond_d
    sget-boolean v17, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_e

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_e

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 421
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_9

    .line 428
    .end local v3           #leftDelta:I
    .end local v5           #leftLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v6           #leftLeftHeight:I
    .end local v7           #leftRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8           #leftRightHeight:I
    :cond_f
    if-nez v1, :cond_10

    .line 429
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 430
    if-eqz p2, :cond_a

    goto :goto_6

    .line 435
    :cond_10
    sget-boolean v17, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 436
    :cond_11
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 437
    if-nez p2, :cond_a

    goto/16 :goto_6
.end method

.method private replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, replacement:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 356
    .local v1, parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 357
    if-eqz p2, :cond_0

    .line 358
    iput-object v1, p2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 361
    :cond_0
    if-eqz v1, :cond_3

    .line 362
    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v2, p1, :cond_1

    .line 363
    iput-object p2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-boolean v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v2, p1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 366
    :cond_2
    iput-object p2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 369
    :cond_3
    iget v2, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 370
    .local v0, index:I
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    aput-object p2, v2, v0

    goto :goto_0
.end method

.method private rotateLeft(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, root:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 449
    iget-object v0, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 450
    .local v0, left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 451
    .local v1, pivot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 452
    .local v2, pivotLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 455
    .local v3, pivotRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 456
    if-eqz v2, :cond_0

    .line 457
    iput-object p1, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 460
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 463
    iput-object p1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 464
    iput-object v1, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 467
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 469
    iget v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_1

    iget v5, v3, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 471
    return-void

    :cond_2
    move v6, v5

    .line 467
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private rotateRight(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, root:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 478
    iget-object v0, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 479
    .local v0, pivot:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 480
    .local v3, right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 481
    .local v1, pivotLeft:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 484
    .local v2, pivotRight:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 485
    if-eqz v2, :cond_0

    .line 486
    iput-object p1, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 489
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 492
    iput-object p1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 493
    iput-object v0, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 496
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 498
    iget v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 500
    return-void

    :cond_2
    move v6, v5

    .line 496
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private static secondaryHash(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 272
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 273
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 987
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 127
    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const/4 v3, 0x0

    iput v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 129
    iget v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 132
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 133
    .local v1, header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .local v0, e:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_0

    .line 134
    iget-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 135
    .local v2, next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 136
    move-object v0, v2

    .line 137
    goto :goto_0

    .line 139
    .end local v2           #next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    iput-object v1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 140
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 109
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .line 509
    .local v0, result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    .end local v0           #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .end local v0           #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_0
.end method

.method find(Ljava/lang/Object;Z)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 13
    .parameter
    .parameter "create"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v5, 0x0

    .line 159
    iget-object v8, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 160
    .local v8, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    iget-object v11, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 161
    .local v11, table:[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"[Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v3

    .line 162
    .local v3, hash:I
    array-length v2, v11

    add-int/lit8 v2, v2, -0x1

    and-int v10, v3, v2

    .line 163
    .local v10, index:I
    aget-object v1, v11, v10

    .line 164
    .local v1, nearest:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .line 166
    .local v9, comparison:I
    if-eqz v1, :cond_4

    .line 171
    sget-object v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v2, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    move-object v7, v2

    .line 175
    .local v7, comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v7, :cond_2

    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    .line 180
    :goto_1
    if-nez v9, :cond_3

    move-object v5, v1

    .line 227
    .end local v7           #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_0
    :goto_2
    return-object v5

    :cond_1
    move-object v7, v5

    .line 171
    goto :goto_0

    .line 175
    .restart local v7       #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_2
    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v8, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto :goto_1

    .line 185
    :cond_3
    if-gez v9, :cond_5

    iget-object v6, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 187
    .local v6, child:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_3
    if-nez v6, :cond_6

    .line 196
    .end local v6           #child:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7           #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_4
    if-eqz p2, :cond_0

    .line 201
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 203
    .local v4, header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v1, :cond_9

    .line 206
    sget-object v2, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v2, :cond_7

    instance-of v2, p1, Ljava/lang/Comparable;

    if-nez v2, :cond_7

    .line 207
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " is not Comparable"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    .end local v4           #header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v7       #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_5
    iget-object v6, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_3

    .line 191
    .restart local v6       #child:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_6
    move-object v1, v6

    .line 192
    goto :goto_0

    .line 210
    .end local v6           #child:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7           #comparableKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v4       #header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_7
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 211
    .local v0, created:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    aput-object v0, v11, v10

    .line 222
    :goto_4
    iget v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v5, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le v2, v5, :cond_8

    .line 223
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    .line 225
    :cond_8
    iget v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    move-object v5, v0

    .line 227
    goto :goto_2

    .line 213
    .end local v0           #created:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_9
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 214
    .restart local v0       #created:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-gez v9, :cond_a

    .line 215
    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 219
    :goto_5
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_4

    .line 217
    :cond_a
    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_5
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 253
    .local v0, mine:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 255
    .local v1, valuesEqual:Z
    :goto_0
    if-eqz v1, :cond_1

    .end local v0           #mine:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_1
    return-object v0

    .line 253
    .end local v1           #valuesEqual:Z
    .restart local v0       #mine:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    .restart local v1       #valuesEqual:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 234
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 103
    .local v0, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;

    .line 516
    .local v0, result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    .end local v0           #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;

    .end local v0           #result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$KeySet;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 116
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 119
    .local v0, created:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 120
    .local v1, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 121
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 146
    .local v0, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInternal(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 10
    .parameter
    .parameter "unlink"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v6, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 287
    iget-object v6, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 288
    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 291
    :cond_0
    iget-object v1, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 292
    .local v1, left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 293
    .local v4, right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 294
    .local v3, originalParent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 305
    iget v6, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v7, v4, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v6, v7, :cond_3

    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->last()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 307
    .local v0, adjacent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v0, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, leftHeight:I
    iget-object v1, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 312
    if-eqz v1, :cond_1

    .line 313
    iget v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 314
    iput-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 315
    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 316
    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 318
    :cond_1
    const/4 v5, 0x0

    .line 319
    .local v5, rightHeight:I
    iget-object v4, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 320
    if-eqz v4, :cond_2

    .line 321
    iget v5, v4, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 322
    iput-object v4, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 323
    iput-object v0, v4, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 324
    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 326
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 342
    .end local v0           #adjacent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2           #leftHeight:I
    .end local v5           #rightHeight:I
    :goto_1
    return-void

    .line 305
    :cond_3
    invoke-virtual {v4}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->first()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_4
    if-eqz v1, :cond_5

    .line 330
    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 331
    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 339
    :goto_2
    invoke-direct {p0, v3, v9}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 340
    iget v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 341
    iget v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_1

    .line 332
    :cond_5
    if-eqz v4, :cond_6

    .line 333
    invoke-direct {p0, p1, v4}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 334
    iput-object v8, p1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_2

    .line 336
    :cond_6
    invoke-direct {p0, p1, v8}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 347
    .local v0, node:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 350
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
