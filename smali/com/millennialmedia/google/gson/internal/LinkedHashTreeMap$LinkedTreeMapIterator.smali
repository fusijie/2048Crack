.class abstract Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;)V
    .locals 1
    .parameter

    .prologue
    .line 857
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget-object v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 861
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 857
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 865
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextNode()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 871
    .local v0, e:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->header:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v0, v1, :cond_0

    .line 872
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 875
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 877
    :cond_1
    iget-object v1, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 878
    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 883
    .local p0, this:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,"Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    .line 888
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 889
    return-void
.end method
