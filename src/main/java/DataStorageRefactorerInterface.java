import java.util.List;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;

/**
 *
 * @author gxufh
 */
public interface DataStorageRefactorerInterface {

    void createDataList(Data data);

    void deleteDataList(int id);

    List<Data> readDataList();

    void updateDataList(int id, Data data);
    
}
