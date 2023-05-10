package treadle.vcd

import java.io.File
import scala.io.Source
object FileUtils {
  def getLines(filePath: String): Iterator[String] = {
    Source.fromFile(new File(filePath)).getLines()
  }
}