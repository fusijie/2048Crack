.class Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 705
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    const/4 v3, 0x0

    .line 722
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 723
    .local v2, stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    move-object v1, v3

    .line 734
    :goto_0
    return-object v1

    .line 726
    :cond_0
    move-object v1, v2

    .line 727
    .local v1, result:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iput-object v3, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 729
    iget-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .local v0, n:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 730
    iput-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    move-object v2, v0

    .line 729
    iget-object v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_1

    .line 733
    :cond_1
    iput-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0
.end method

.method reset(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, root:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 713
    .local v1, stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, n:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 714
    iput-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 715
    move-object v1, v0

    .line 713
    iget-object v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 717
    :cond_0
    iput-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 718
    return-void
.end method
