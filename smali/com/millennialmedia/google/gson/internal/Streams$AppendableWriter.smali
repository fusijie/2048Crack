.class final Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .parameter "appendable"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 91
    new-instance v0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 95
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/millennialmedia/google/gson/internal/Streams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 110
    return-void
.end method

.method public write([CII)V
    .locals 3
    .parameter "chars"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, v0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    .line 103
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/millennialmedia/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 104
    return-void
.end method
